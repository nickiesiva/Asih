<div ui-content-for="title">
  <span>Accordion</span>
</div>

<div class="scrollable">
  <div class="scrollable-content">
    <div class="section">
      <div class="panel-group" 
        
        ui-state='myAccordion' 
        ui-default='2'>

        <div class="panel panel-default" ng-repeat="(key, val) in getListBuilding">
          <div class="panel-heading" ui-set="{'myAccordion': key}">
            <h4 class="panel-title">
                <span style="">{{val.nama}}</span> <br>
                <small style="font-style:italic;color:#8E8E8E;"> beli:{{val.jml_beli}} | {{val.telp}} | {{val.kota}}</small>
            </h4>
          </div>

          <div ui-if="myAccordion == {{key}}">
            <div class="panel-body">
            	<table>
            		<tr>
            			<td>
              				id 
            			</td>
            			<td>: {{val.id}}</td>
            		</tr>
            		<tr>
            			<td>
             			 nama 
            			</td>
            			<td>: {{val.nama}}</td>
            		</tr>
            		<tr>
            			<td>
             			 kota 
            			</td>
            			<td>: {{val.kota}}</td>
            		</tr>
            		<tr>
            			<td>
             			 telp 
            			</td>
            			<td>: {{val.telp}}</td>
            		</tr>
            		<tr>
            			<td>
             			 wa 
            			</td>
            			<td>: {{val.wa}}</td>
            		</tr>
            		<tr>
            			<td>
              				fb 
            			</td>
            			<td>: {{val.fb}}</td>
            		</tr>
            		<tr>
            			<td>
              				tw 
            			</td>
            			<td>: {{val.tw}}</td>
            		</tr>
            		<tr>
            			<td>
              				bbm 
            			</td>
            			<td>: {{val.bbm}}</td>
            		</tr>
            		<tr>
            			<td>
              				beli 
            			</td>
            			<td>: {{val.jml_beli}}</td>
            		</tr>
            		<tr>
            			<td>
              				alamat 
            			</td>
            			<td>: {{val.alamat}}</td>
            		</tr>
            	</table>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>