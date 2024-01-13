import { put = mapPut; get = mapGet; thash } "mo:map/Map";
import S "State";

module {

  public class Fees(state: S.State) = {

    public func get(k: Text): ?S.Fee = mapGet<Text, S.Fee>(state.fees, thash, k);

    public func set(k: Text, v: S.Fee) = ignore mapPut<Text, S.Fee>(state.fees, thash, k, v);

    public func multiply(k: Text, n: Nat64): ?Nat64 {
      switch( mapGet<Text, S.Fee>(state.fees, thash, k) ){
        case( ?fee ) ?(fee * n);
        case null null;
      }
    };

  };

}