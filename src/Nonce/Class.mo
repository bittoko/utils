import NatX "mo:xtended-numbers/NatX";
import Buffer "mo:base/Buffer";
import Blob "mo:base/Blob";
import S "State";

module {

  public class Nonce(state: S.State) = {
    public func next(): Blob {
      let buffer = Buffer.Buffer<Nat8>(5);
      NatX.encodeNat(buffer, state.nonce, #unsignedLEB128);
      let ret = Blob.fromArray( Buffer.toArray<Nat8>( buffer ) );
      state.nonce += 1;
      ret
    };
  };

}