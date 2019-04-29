 <div class="box box-success">
        <div class="box-header with-border">
            <h6 class="box-title">Kesimpulan</h6>
        </div><!-- /.box-header -->
        <div class="box-body"> 
            <?php if(sizeof($listPenyakit)>0) { ?>
                <p>
                    Berdasarkan gejalanya, sapi tersebut di prediksi mengidap penyakit <b><?php echo $listPenyakit[0]['nama'];?></b> dengan tingkat kepercayaan <b><?php echo $listPenyakit[0]['kepercayaan'];?> %</b><br/>
                    <?php echo $listPenyakit[0]['keterangan'];?>
                </p>
            <?php }else{?>
                <p>
                    Penyakit tidak dapat diprediksi karena tingkat kepercayaan gejala terlalu rendah
                </p>
            <?php }?>
        </div><!--box body-->
    <h3>Hasil Analisis</h3>
    <div class="box box-warning">
        <div class="box-header with-border">
            <h6 class="box-title">Gejala yang dipilih</h6>
        </div><!-- /.box-header -->
            <div class="box-body table-responsive">
            <table id="tbl-list" class="table table-bordered table-striped">
                <tr>
                    <th width="50px">No</th>
                    <th>Gejala</th>
                </tr>
                <tr>
                    <?php $i = 1; foreach($listGejala->result() as $value){?>
                        <tr>
                            <td width="30px"><?php echo $i++?></td>
                            <td><?php echo $value->kode." - ".$value->keterangan?></td>
                        </tr>
                    <?php }?>
                </tr>
            </table>
        </div><!--box body-->
    </div><!--box-->
    <div class="box box-success">
        <div class="box-header with-border">
            <h6 class="box-title">Hasil Diagnosa</h6>
        </div><!-- /.box-header -->
        <div class="box-body"> 
            <table id="tbl-list" class="table table-bordered table-striped">
                <tr>
                    <th width="50px">No</th>
                    <th>Penyakit</th>
                    <th>Tingkat Kepercayaan</th>
                </tr>
                <tr>
                    <?php $i = 1; foreach($listPenyakit as $value){?>
                        <tr>
                            <td width="30px"><?php echo $i++?></td>
                            <td><?php echo $value['kode']." - ".$value['nama']?></td>
                            <td><?php echo $value['kepercayaan']?> %</td>
                        </tr>
                    <?php }?>
                </tr>
            </table>
        </div><!--box body-->
    </div><!--box-->

   
        <div class="box-footer clearfix">
            <a class="btn btn-sm btn-primary btn-flat pull-right" href="<?php echo base_url('diagnosa')?>">Deteksi Ulang</a>
            <button class="btn btn-sm btn-primary btn-flat pull-right" onclick="window.print()">Cetak Hasil</button> 
        </div> 

        
    </div><!--box-->
</div>
<br></br>
<br></br>
<br></br>
