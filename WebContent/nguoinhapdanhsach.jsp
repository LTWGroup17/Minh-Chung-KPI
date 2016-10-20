<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
          <div class="tab-pane active text-style" id="tab1">
             
                    <table id="myTable">
                          <tr class="header">
                            <th style = "width: 10%"> STT </th>
                            <th style="width:30%;">Tên Minh Chứng</th>
                            <th style="width:40%;">Tình Trạng</th>
                            <th style="width:30%;">Xem Chi Tiết</th>
                          </tr>

                          <tr>
                            <td>1</td>
                            <td>Minh Chứng 1</td>
                            <td>Đã Hoàn Thành</td>
                            <td><button data-toggle="modal" data-target="#xemchitiet" class="btn btn-primary center-block">Xem</button></td>
                          </tr>
                           <tr>
                            <td>2</td>
                            <td>Minh Chứng 2</td>
                            <td>Chưa Hoàn Thành</td>
                            <td><button data-toggle="modal" data-target="#xemchitiet" class="btn btn-primary center-block">Xem</button></td>
                          </tr>  
                    </table>
                    <div class="modal fade" id="xemchitiet" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h3 class="modal-title" id="lineModalLabel">Thông Tin Minh Chứng</h3>
                        </div>
                        <div class="modal-body">
                            
                            <!-- content goes here -->
                            <form>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Tên Minh Chứng: </label>
                               
                              </div>
                              <div class="form-group">
                                <label for="exampleInputPassword1">Mô tả minh chứng: </label>
                                
                              </div>
                              <div class="form-group">
                                <label for="exampleInputFile">Các File đính kèm : <a href = "#"> link </a> <a href = "#"> link2 </a></label>
                                <br><br>
                              </div>
                              <div class="row">
                                <div class="col-sm-6">
                                    <label for="exampleInputPassword1">Người Giao Minh Chứng: </label>
                                
                                </div>
                                <div class="col-sm-6">
                                    <label for="exampleInputPassword1">Thời Gian: </label>
                                
                                </div>
                          
                              </div>
                             
                            </form>

                        </div>
                        <div class="modal-footer">
                            <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">Đóng</button>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
            </div>