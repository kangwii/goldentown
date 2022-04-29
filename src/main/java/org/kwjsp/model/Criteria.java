package org.kwjsp.model;

public class Criteria {
   // 검색종류(제목, 내용...)
   private String type;
   // 검색어(키워드)
   private String keyword;
   // pagenum
   private int pagenum;
   // 한 페이지 당 보여주는 건수. 명시적 초기화
   private int amount;
   
   // 생성자를 이용한 초기화. method랑 똑같은데 return타입이 없음. method이름쓸때 생성자는 반드시 클래스 이름.
   Criteria(){
      this(1,10);
   }
   Criteria(int pagenum, int amount){
      this.pagenum=pagenum;
      this.amount=amount;
   }
   
   public int getPagenum() {
      return pagenum;
   }
   public void setPagenum(int pagenum) {
      this.pagenum = pagenum;
   }
   public int getAmount() {
      return amount;
   }
   public void setAmount(int amount) {
      this.amount = amount;
   }
   public String getType() {
      return type;
   }
   public void setType(String type) {
      this.type = type;
   }
   public String getKeyword() {
      return keyword;
   }
   public void setKeyword(String keyword) {
      this.keyword = keyword;
   }
   @Override
   protected Object clone() throws CloneNotSupportedException {
      return super.clone();
   }
   @Override
   public boolean equals(Object obj) {
      return super.equals(obj);
   }
   @Override
   protected void finalize() throws Throwable {
      super.finalize();
   }
   @Override
   public int hashCode() {
      return super.hashCode();
   }
   @Override
   public String toString() {
      return "Criteria [type=" + type + ", keyword=" + keyword + ", pagenum=" + pagenum + ", amount=" + amount + "]";
   }
}