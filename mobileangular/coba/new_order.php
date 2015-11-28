<div ui-content-for="title">
  <span>Accordion</span>
</div>

<div class="scrollable">
  <div class="scrollable-content">
    <div class="section">
      <div class="panel-group" 
        
        ui-state='myAccordion' 
        ui-default='2'>

        <div class="panel panel-default" ng-repeat="(key, val) in getNewOrder">
          <div class="panel-heading" ui-set="{'myAccordion': key}">
            <h4 class="panel-title">
                <span style="">{{val.nama}}</span> 
                <small style="font-style:italic;color:#8E8E8E;"> (Rp {{val.jml_transfer}})</small>
                <br>
                <small style="font-style:italic;color:#8E8E8E;"> {{val.tgl_beli}} | {{val.telp}} | {{val.kota}}</small>
            </h4>
          </div>

          <div ui-if="myAccordion == {{key}}">
            <div class="panel-body">
            	<table>
            		<tr>
            			<td>
              				id 
            			</td>
            			<td>: {{val.items[0].nama}}</td>
            		</tr>
            		
            	</table>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>