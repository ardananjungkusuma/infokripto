<?php

namespace App\Http\Controllers;

use App\Cnetwork;
use App\Coin;
use App\Cwallet;
use App\Walletcoin;
use App\Walletnetwork;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    public function index()
    {
        return view('home.index');
    }

    public function pilihDompet()
    {
        $coin = Coin::all();
        $cnetwork = Cnetwork::all();
        return view('home.pilihdompet', compact('coin', 'cnetwork'));
    }

    public function cariDompet(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nft' => 'required'
        ]);

        if ($validator->fails()) {
            return redirect('/cnetwork/edit/' . $request->id_jenis_network)
                ->withErrors($validator)
                ->withInput();
        }

        if ($request->hidden_coin_id !== null) {
            $selectedCoin = array();
            $count_coin = count($request->hidden_coin_id);
            if ($count_coin > 0) {
                for ($count = 0; $count < $count_coin; $count++) {
                    array_push($selectedCoin, $request->hidden_coin_id[$count]);
                    $now = $request->hidden_coin_id[$count];
                    $data = Walletcoin::where('id_jenis_coin', $now)->get();
                    $num = 0;
                    if ($count_coin > 1) {
                        foreach ($data as $result) {
                            // echo count($result);
                            $coinResult[$count][$num] = $result->id_wallet;
                            $num++;
                        }
                    } else if ($count_coin == 1) {
                        $coinResult = [];
                        foreach ($data as $result) {
                            // echo count($result);
                            array_push($coinResult, $result->id_wallet);
                        }
                    }
                }
                // print_r($selectedCoin);
                // print_r($coinResult);
                // echo count($coinResult);
                if ($count_coin > 1) {
                    $collection = [];
                    foreach ($coinResult as $cr) {
                        $collection[] = $cr;
                    }
                    $finalCoin = call_user_func_array('array_intersect', $collection);
                } else if ($count_coin == 1) {
                    $finalCoin = $coinResult;
                }
                // print_r($finalCoin);
            }
        } else {
            $finalCoin = [];
        }
        // dd($finalCoin);]

        if ($request->hidden_network_id !== null) {
            $selectedNetwork = array();
            $count_network = count($request->hidden_network_id);
            if ($count_network > 0) {
                for ($count = 0; $count < $count_network; $count++) {
                    array_push($selectedNetwork, $request->hidden_network_id[$count]);
                    $now = $request->hidden_network_id[$count];
                    $data = Walletnetwork::where('id_jenis_network', $now)->get();
                    $num = 0;
                    if ($count_network > 1) {
                        foreach ($data as $result) {
                            $networkResult[$count][$num] = $result->id_wallet;
                            $num++;
                        }
                    } else if ($count_network == 1) {
                        $networkResult = [];
                        foreach ($data as $result) {
                            array_push($networkResult, $result->id_wallet);
                        }
                    }
                }
                // print_r($selectedNetwork);
                if ($count_network > 1) {
                    $collection = [];
                    foreach ($networkResult as $nr) {
                        $collection[] = $nr;
                    }
                    $finalNetwork = call_user_func_array('array_intersect', $collection);
                } else if ($count_network == 1) {
                    $finalNetwork = $networkResult;
                }
                // print_r($data);
            }
        } else {
            $finalNetwork = [];
        }

        // dd($finalNetwork);

        if (sizeof($finalNetwork) > 0 && sizeof($finalCoin) > 0) {
            $finalWallet = array_intersect($finalCoin, $finalNetwork);
        } else if (sizeof($finalNetwork) > 0 && sizeof($finalCoin) == 0) {
            $finalWallet = $finalNetwork;
        } else if (sizeof($finalNetwork) == 0 && sizeof($finalCoin) > 0) {
            $finalWallet = $finalCoin;
        } else if (sizeof($finalNetwork) == 0 && sizeof($finalCoin) == 0) {
            // Maksut All berarti semua wallet include dihitung karena user ga milih option apa"
            $finalWallet = ['All'];
        }

        // dd($finalWallet);

        $nft = $request->nft;

        if ($nft == 1) {
            // Get all Wallet berdasarkan NFT Showcase
            $data = Cwallet::where('nft_showcase', $nft)->get();
            $listNFTSupport = [];
            foreach ($data as $result) {
                array_push($listNFTSupport, $result->id_wallet);
            }
            // print_r($listNFTSupport);
        }

        if (count($finalWallet) < 1) {
            // Gaada hasil dari kriteria yang dicari
            echo "RA ENEK HASILE";
            $result = "Empty";
        } else if (count($finalWallet) == 1 && !empty($finalWallet[0]) && $finalWallet[0] == 'All') {
            // User tidak memilih opsi apa apa maka dari itu SPK hitung semua data wallet yang ada.
            $data = Cwallet::all();
            $arrayFinalFilter = [];
            foreach ($data as $result) {
                array_push($arrayFinalFilter, $result->id_wallet);
            }
            // echo "ITUNG KABEH";
            $unfiltered_res = $this->spkSMART($arrayFinalFilter);
            $hasil_wallet = [];
            $nilai_wallet = [];
            for ($i = 0; $i < 3; $i++) {
                for ($j = 0; $j < count($unfiltered_res[$i]); $j++) {
                    if ($j == 0) {
                        $hasil_wallet[$i] = $unfiltered_res[$i][$j];
                    }
                    if ($j == 1) {
                        $nilai_wallet[$i] = $unfiltered_res[$i][$j];
                    }
                }
            }
            $arrayFinalHasilWallet = [];
            for ($i = 0; $i < count($hasil_wallet); $i++) {
                $id_now = $hasil_wallet[$i];
                $data = Cwallet::where('id_wallet', $id_now)->get();
                $num = 0;
                foreach ($data as $result) {
                    $arrayFinalHasilWallet[$i][$num] = $result->id_wallet;
                    $num++;
                    $arrayFinalHasilWallet[$i][$num] = $result->nama_wallet;
                    $num++;
                    $arrayFinalHasilWallet[$i][$num] = $result->link_playstore;
                }
            }
            $result = $arrayFinalHasilWallet;
            // print_r($arrayFinalHasilWallet);
            // dd($result);
        } else if (count($finalWallet) == 1) {
            // Gausah SPK soalnya hasil cuma 1
            if ($nft == 1) {
                // Filtering Wallet berdasarkan NFT Showcase
                // Tetep nunjukin alternatif wallet yang gaada NFT nya.
                $arrayFinalFilter = array_intersect($finalWallet, $listNFTSupport);
                $result = $arrayFinalFilter;
            } else if ($nft == 0) {
                $arrayFinalFilter = $finalWallet;
                $result = $arrayFinalFilter;
            }
        } else if (count($finalWallet) > 1) {
            // Masuk SPK
            if ($nft == 1) {
                $arrayFinalFilter = array_intersect($finalWallet, $listNFTSupport);
                if (count($arrayFinalFilter) < 1) {
                    // jika ga ketemu nft 

                }
            } else if ($nft == 0) {
                $arrayFinalFilter = $finalWallet;
                $result = "Empty";
            }
            $result = $this->spkSMART($arrayFinalFilter);
        }

        // TODO Show result to view.
    }

    public function spkSMART($data = array())
    {
        // bobot
        $b_ukuran_aplikasi = 4;
        $b_chain_support = 5;
        $b_coin_support = 5;
        $b_nft_showcase = 3;
        $b_rating = 3;
        $b_platform_support = 4;
        $b_total_user_install = 3;

        $arrayBobot = [4, 5, 5, 3, 3, 4, 3];

        // C untuk cost, B untuk benefit
        $kriteriaBobot = ['C', 'B', 'B', 'B', 'B', 'B', 'B'];

        $listWalletOri = [];
        $listWalletWithoutID = [];
        for ($i = 0; $i < count($data); $i++) {
            $id_now = $data[$i];
            $datawallet = Cwallet::where('id_wallet', $id_now)->get();
            $data2 = Walletcoin::where('id_wallet', $id_now)->get();
            $data3 = Walletnetwork::where('id_wallet', $id_now)->get();
            $chain_support = 0;
            $coin_support = 0;

            // ngitung jumlah chain support
            foreach ($data3 as $result) {
                $chain_support++;
            }

            // ngitung jumlah coin support
            foreach ($data2 as $result) {
                $coin_support++;
            }

            $num = 0;
            foreach ($datawallet as $result) {
                $listWalletOri[$i][$num] = $result->id_wallet;
                $num++;
                $listWalletOri[$i][$num] = $result->ukuran_aplikasi;
                $num++;
                $listWalletOri[$i][$num] = $chain_support;
                $num++;
                $listWalletOri[$i][$num] = $coin_support;
                $num++;
                $listWalletOri[$i][$num] = $result->nft_showcase;
                $num++;
                $listWalletOri[$i][$num] = $result->rating;
                $num++;
                $listWalletOri[$i][$num] = $result->platform_support;
                $num++;
                $listWalletOri[$i][$num] = $result->total_user_install;
                $num++;
            }

            $num = 0;
            foreach ($datawallet as $result) {
                $listWalletWithoutID[$i][$num] = $result->ukuran_aplikasi;
                $num++;
                $listWalletWithoutID[$i][$num] = $chain_support;
                $num++;
                $listWalletWithoutID[$i][$num] = $coin_support;
                $num++;
                $listWalletWithoutID[$i][$num] = $result->nft_showcase;
                $num++;
                $listWalletWithoutID[$i][$num] = $result->rating;
                $num++;
                $listWalletWithoutID[$i][$num] = $result->platform_support;
                $num++;
                $listWalletWithoutID[$i][$num] = $result->total_user_install;
                $num++;
            }
        }

        // Pemangkatan 2
        $listWalletPemangkatan = [];
        for ($i = 0; $i < count($listWalletOri); $i++) {
            for ($j = 1; $j < count($listWalletOri[$i]); $j++) {
                $listWalletPemangkatan[$i][$j] = pow($listWalletOri[$i][$j], 2);
            }
        }

        $listWalletWithoutIDPemangkatan = [];
        for ($i = 0; $i < count($listWalletWithoutID); $i++) {
            for ($j = 0; $j < count($listWalletWithoutID[$i]); $j++) {
                $listWalletWithoutIDPemangkatan[$i][$j] = pow($listWalletWithoutID[$i][$j], 2);
            }
        }

        // Total per kriteria dari hasil pemangkatan diakar
        $sumResult = [];
        $num = 0;
        foreach (array_keys($listWalletPemangkatan[0]) as $key) {
            $sumResult[$num] = array_sum(array_column($listWalletPemangkatan, $key));
            $num++;
        }
        // return $sumResult;

        // Hasil total diakar
        $sqrtResult = [];
        for ($i = 0; $i < count($sumResult); $i++) {
            // echo $sumResult[$i];
            $sqrtResult[$i] = sqrt($sumResult[$i]);
            // echo "<br>";
        }
        // return $sqrtResult;


        // Normalisasi
        $listWalletNormalisasi = [];
        for ($i = 0; $i < count($listWalletOri); $i++) {
            for ($j = 0; $j < count($listWalletOri[$i]); $j++) {
                if ($j == 0) {
                    $listWalletNormalisasi[$i][$j] = $listWalletOri[$i][$j];
                } else {
                    $listWalletNormalisasi[$i][$j] = $listWalletOri[$i][$j] / $sqrtResult[$j - 1];
                }
            }
        }

        // Normalisasi
        $listWalletNormalisasiWithoutID = [];
        for ($i = 0; $i < count($listWalletOri); $i++) {
            for ($j = 1; $j < count($listWalletOri[$i]); $j++) {
                $listWalletNormalisasiWithoutID[$i][$j - 1] = $listWalletOri[$i][$j] / $sqrtResult[$j - 1];
            }
        }
        // dd($listWalletNormalisasi);

        // Perhitungan nilai utility
        // 1. mencari min max
        $minResult = [];
        $maxResult = [];
        $num = 0;
        foreach (array_keys($listWalletNormalisasiWithoutID[0]) as $key) {
            $maxResult[$num] = max(array_column($listWalletNormalisasiWithoutID, $key));
            $minResult[$num] = min(array_column($listWalletNormalisasiWithoutID, $key));
            $num++;
        }

        // 2. Dihitung berdasarkan cost/benefit
        $listWalletAfterUtility = [];
        for ($i = 0; $i < count($listWalletNormalisasi); $i++) {
            for ($j = 0; $j < count($listWalletNormalisasi[$i]); $j++) {
                // karena yang index ke 0 id maka tidak dihitung.
                if ($j == 0) {
                    $listWalletAfterUtility[$i][$j] = $listWalletNormalisasi[$i][$j];
                    // echo $listWalletAfterUtility[$i][$j];
                    // echo " | ";
                } else {
                    // get data kriteria, min, max
                    $kriteria_now = $kriteriaBobot[$j - 1];
                    $min_now = $minResult[$j - 1];
                    $max_now = $maxResult[$j - 1];

                    if ($kriteria_now == 'C') {
                        $listWalletAfterUtility[$i][$j] = (($max_now - $listWalletNormalisasi[$i][$j]) / ($max_now - $min_now));
                        // echo $min_now;
                        // echo $listWalletAfterUtility[$i][$j];
                        // echo " | ";
                    } else if ($kriteria_now == 'B') {
                        $listWalletAfterUtility[$i][$j] = (($listWalletNormalisasi[$i][$j] - $min_now) / ($max_now - $min_now));
                        // echo $max_now;
                        // echo $listWalletAfterUtility[$i][$j];
                        // echo " | ";
                    }
                }
            }
            // echo "<br>";
        }

        // Perbaikan Bobot
        $satu_dibagi_total_bobot = 1 / array_sum($arrayBobot);

        for ($i = 0; $i < count($arrayBobot); $i++) {
            $arrayBobotNormalisasi[$i] = $satu_dibagi_total_bobot * $arrayBobot[$i];
        }

        // Menentukan Nilai Akhir dengan mengalikan ke bobot pada setiap kriteria
        $listWalletHasilAkhir = [];
        $totalScore = [];
        for ($i = 0; $i < count($listWalletAfterUtility); $i++) {
            $num = 0;
            $total_sementara = 0;
            $id_now = 0;
            for ($j = 0; $j < count($listWalletAfterUtility[$i]); $j++) {
                // karena yang index ke 0 id maka tidak dihitung.
                if ($j == 0) {
                    $listWalletHasilAkhir[$i][$j] = $listWalletAfterUtility[$i][$j];
                    // echo $listWalletHasilAkhir[$i][$j] . " | ";
                    $id_now = $listWalletAfterUtility[$i][$j];
                } else {
                    $listWalletHasilAkhir[$i][$j] = $listWalletAfterUtility[$i][$j] * $arrayBobotNormalisasi[$j - 1];
                    // echo $listWalletHasilAkhir[$i][$j] . " | ";
                    $total_sementara = $total_sementara + $listWalletHasilAkhir[$i][$j];
                }
            }
            $totalScore[$i][$num] = $id_now;
            $num++;
            $totalScore[$i][$num] = $total_sementara;
        }

        // Sorting using spaceship operator https://stackoverflow.com/questions/2699086/how-to-sort-a-multi-dimensional-array-by-value
        usort($totalScore, function ($a, $b) {
            return $b[1] <=> $a[1];
        });

        // print_r($totalScore);
        // print_r($ranknya);
        return $totalScore;
        // dd($totalScore);
    }
}
