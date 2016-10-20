<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
            <div class="tab-pane text-style" id="tab2">
                <form>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên Minh Chứng:</label>
                         <select id="selectbasic_tipoatv" name="selectbasic_tipoatv" class="form-control">
                          <option value="1">Minh Chứng 1</option>
                          <option value="2">Minh Chứng 2</option>
                          <option value="3">Minh Chứng 3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Mô tả minh chứng</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Tham gia đầy đủ các hoạt động">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Thời gian</label>
                        <input type="date" class="form-control" id="exampleInputEmail1" placeholder="29/10/2016">
                    </div>
                    <div class="form-group">
                                <label for="exampleInputFile">Các File đính kèm</label>
                                <input type="file" id="exampleInputFile">
                              </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                             <button class="btn btn-primary btn-lg pull-right" type="button">Nhập</button>
                        </div>
                        <div class="col-sm-3">
                            <button class="btn btn-primary btn-lg pull-right" type="button">Hủy</button>
                        </div>
                    </div>
                 </form>

            </div>