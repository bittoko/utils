import C "Class";
import S "State";

module {

  public type Fee = S.Fee;
  
  public type Fees = C.Fees;

  public type State = S.State;

  public let { Fees } = C;

  public let State = S; 

};