import {test; suite} "mo:test";
import { Fees } "../src";

suite("Fee Class Methods", func(){

  let params : Fees.State.InitParams = {fees = [("dfx_test_key", 10_000_000)]};
  let state = Fees.State.init(params);
  let fees = Fees.Fees(state);

  test("get() - existing", func() {
    switch( fees.get("dfx_test_key") ){
      case( #ok fee ) assert fee == 10_000_000;
      case( #err msg ) assert false;
    }
  });

  test("get() - missing", func() {
    switch( fees.get("bad_key") ){
      case( #ok fee ) assert false;
      case( #err msg ) switch( msg ){
        case( #fee_not_defined txt){
          assert txt == "bad_key"
        }
      }
    }
  });

})