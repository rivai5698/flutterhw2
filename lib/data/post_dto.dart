class Post{
  late int postId;
  late String title;
  late String dateCreate;
  late String content;
  late List<String> imgUrl;
  late String postStatus;
  late int userId;


  Post(this.postId, this.title, this.dateCreate, this.content, this.imgUrl,
      this.postStatus, this.userId);


  getUrl(){
    String str = this.title;
    str = str.toLowerCase();
    str = str.replaceAll("à","a").replaceAll("á","a").replaceAll("ạ","a").replaceAll("ả","a").replaceAll("ã","a").replaceAll("â","a").replaceAll("ầ","a").replaceAll("ấ","a").replaceAll("ậ","a").replaceAll("ẩ","a").replaceAll("ẫ","a").replaceAll("ă","a").replaceAll("ằ","a").replaceAll("ắ","a").replaceAll("ặ","a").replaceAll("ẳ","a").replaceAll("ẵ","a");
    str = str.replaceAll("è","e").replaceAll("é","e").replaceAll("ẹ","e").replaceAll("ẻ","e").replaceAll("ẽ","e").replaceAll("ê","e").replaceAll("ề","e").replaceAll("ế","e").replaceAll("ệ","e").replaceAll("ể","e").replaceAll("ễ","e");
    str = str.replaceAll("ì","i").replaceAll("í","i").replaceAll("ị","i").replaceAll("ỉ","i").replaceAll("ĩ","i");
    str = str.replaceAll("ò","o").replaceAll("ó","o").replaceAll("ọ","o").replaceAll("ỏ","o").replaceAll("õ","o").replaceAll("ô","o").replaceAll("ồ","o").replaceAll("ố","o").replaceAll("ộ","o").replaceAll("ổ","o").replaceAll("ỗ","o").replaceAll("ơ","o").replaceAll("ờ","o").replaceAll("ớ","o").replaceAll("ợ","o").replaceAll("ở","o").replaceAll("ỡ","o");
    str = str.replaceAll("ù","u").replaceAll("ú","u").replaceAll("ụ","u").replaceAll("ủ","u").replaceAll("ũ","u").replaceAll("ư","u").replaceAll("ừ","u").replaceAll("ứ","u").replaceAll("ự","u").replaceAll("ử","u").replaceAll("ữ","u");
    str = str.replaceAll("ỳ","y").replaceAll("ý","y").replaceAll("ỵ","y").replaceAll("ỷ","y").replaceAll("ỹ","y");
    str = str.replaceAll("đ", "d");
    str = str.replaceAll("\u0300","").replaceAll("\u0301","").replaceAll("\u0303","").replaceAll("\u0309","").replaceAll("\u0323","");
    str = str.replaceAll("\u02C6","").replaceAll("\u0306","").replaceAll("\u031B/", "");
    str = str.replaceAll(RegExp('[^A-Za-z0-9_ ]'), '');
    str = str.replaceAll(" ", "-").trim();
    str = "/"+str+"-"+this.postId.toString()+".html";
    return str;
  }


}

