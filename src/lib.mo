import F "Fees";
import N "Nonce";

module {

  public module Fees = {

    public type Fee = F.Fee;
    public type Error = F.Error;
    public type Return = F.Return;
    public type State = F.State;
    public let { Fees; State } = F;

  };

  public module Nonce = {

    public type State = N.State;
    public let { Nonce; State } = N;
    
  };

};