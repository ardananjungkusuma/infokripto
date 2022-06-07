@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Crypto Wallet Terdaftar</h6>
                                <h2>{{ $count_wallet }}</h2>
                            </div>
                            <div class="icon">
                                <i class="fa fa-wallet"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Crypto Wallet yang ada didatabase.</small>
                    </div>
                    <div class="progress progress-sm bg-danger">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Coin Terdaftar</h6>
                                <h2>{{ $count_coin }}</h2>
                            </div>
                            <div class="icon">
                                <i class="fa fa-coins"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Coin yang ada didatabase.</small>
                    </div>
                    <div class="progress progress-sm bg-success">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Network Chain Terdaftar</h6>
                                <h2>{{ $count_cnetwork }}</h2>
                            </div>
                            <div class="icon">
                                <i class="ik ik-box"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Network Chain yang ada didatabase.</small>
                    </div>
                    <div class="progress progress-sm bg-warning">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Kritik & Saran</h6>
                                <h2>{{ $count_krisar }}</h2>
                            </div>
                            <div id="showcounter" class="icon">
                                <i class="fa fa-inbox"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Kritik & Saran Diterima</small>
                    </div>
                    <div class="progress progress-sm bg-info">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 counterSPKnya">
                <div class="widget">
                    <div class="widget-body">
                        <h6 style="font-weight: bold">Filter Count SPK Stats</h6>
                        <div class="row">
                            <div class="col-lg-6">
                                <h6>Start Date: </h6>
                                <input type="date" required id="dateStart">
                            </div>
                            <div class="col-lg-6">
                                <h6>End Date: </h6>
                                <input type="date" required id="dateEnd">
                            </div>
                        </div>
                        <button class="btn btn-sm btn-primary mt-1" type="button" onclick="filterCountSPK()"><i
                                class="fa fa-search"></i> Filter
                            Data</button>
                        {{-- <small class="text-small mt-10 d-block">Total Kritik & Saran Diterima</small> --}}
                    </div>
                    <div class="progress progress-sm bg-secondary">
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-6 col-sm-12 counterSPKnya">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Total SPK Used</h6>
                                <h2 id="count_webstats">{{ $count_webstats }}</h2>
                            </div>
                            <div class="icon">
                                <i class="fa fa-calculator"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Fitur SPK Dijalankan</small>
                    </div>
                    <div class="progress progress-sm bg-secondary">
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Dashboard</h4>
                </div>
            </div>
            <div class="card-body">
                <h4>Selamat datang, {{ Auth::user()->name }}.</h4>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $(".counterSPKnya").hide();
        $("#showcounter").click(function(){
            $(".counterSPKnya").show();
        });
    });
    function filterCountSPK(){
        let startDate = document.getElementById("dateStart").value;
        let endDate = document.getElementById("dateEnd").value;
        if(startDate === "" || endDate === ""){
            alert("Start Date or End Date cannot be empty!")
        } else if((Date.parse(endDate) < Date.parse(startDate))){
            alert("End date should be greater than Start date");
            document.getElementById("dateEnd").value = "";
        } else {
            // console.log(startDate);
            // console.log(endDate);
            $.ajax({
                type: 'GET',
                url: `/admin/countSPK/${startDate}/${endDate}`,
                dataType: 'json',
                success: (hasil) => {
                    // console.log(hasil);
                    $('#count_webstats').html(`${hasil}`);
                }
            });
        }
    }
    
</script>
@endsection