 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <div class="tab-pane text-style" id="tab2">
                <form>
                   <div class="form-group">
                        <label for="name">Chọn Mục Minh Chứng:</label>
                         <select id="selectbasic_tipoatv" name="selectbasic_tipoatv" class="form-control">
                          <option value="1">Hoạt Động Giảng Dạy</option>
                          <option value="2">Hoạt Động Công Tác Xã Hội</option>
                          <option value="3">Các Hoạt Động Khác</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên Minh Chứng:</label>
                         <select id="selectbasic_tipoatv" name="selectbasic_tipoatv" class="form-control">
                          <option value="1">Minh Chứng 1</option>
                          <option value="2">Minh Chứng 2</option>
                          <option value="3">Minh Chứng 3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Người Nhập Minh Chứng</label>
                        <input class="form-control" placeholder="Tên Người Nhập" id="two" required type="text" title="không được bỏ trống" x-moz-errormessage="không bỏ trống" />
                    </div>
                    <br>
                    <div class="row">
                    	<div class="col-sm-3">
                    		 <button class="btn btn-primary btn-lg pull-right" type="submit">Xác nhận</button>
                   		</div>
                   	 	<div class="col-sm-3">
                    		<button class="btn btn-primary btn-lg pull-right" type="button">Hủy</button>
                    	</div>
                    </div>
                 </form>

            </div>