extension UserStringExtesion on String {
  String getFirstName() {
    List<String> lstName = this.split(" ");

    if (lstName.length <= 1)
      return this;
    
    return lstName[0];
  }
  
  bool isValidMail() {
    return this.contains("@") && this.contains(".");
  }
}