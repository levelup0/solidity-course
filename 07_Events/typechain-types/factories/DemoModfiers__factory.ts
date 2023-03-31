/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { Signer, utils, Contract, ContractFactory, Overrides } from "ethers";
import type { Provider, TransactionRequest } from "@ethersproject/providers";
import type { PromiseOrValue } from "../common";
import type { DemoModfiers, DemoModfiersInterface } from "../DemoModfiers";

const _abi = [
  {
    inputs: [],
    stateMutability: "nonpayable",
    type: "constructor",
  },
  {
    inputs: [],
    name: "pay",
    outputs: [],
    stateMutability: "payable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address payable",
        name: "_to",
        type: "address",
      },
    ],
    name: "withdraw",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
] as const;

const _bytecode =
  "0x608060405234801561001057600080fd5b50336000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555061027e806100606000396000f3fe6080604052600436106100295760003560e01c80631b9265b81461002e57806351cff8d914610038575b600080fd5b610036610061565b005b34801561004457600080fd5b5061005f600480360381019061005a919061019e565b610063565b005b565b60008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146100f1576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016100e890610228565b60405180910390fd5b8073ffffffffffffffffffffffffffffffffffffffff166108fc479081150290604051600060405180830381858888f19350505050158015610137573d6000803e3d6000fd5b5050565b600080fd5b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b600061016b82610140565b9050919050565b61017b81610160565b811461018657600080fd5b50565b60008135905061019881610172565b92915050565b6000602082840312156101b4576101b361013b565b5b60006101c284828501610189565b91505092915050565b600082825260208201905092915050565b7f596f7520617265206e6f7420616e206f776e6572210000000000000000000000600082015250565b60006102126015836101cb565b915061021d826101dc565b602082019050919050565b6000602082019050818103600083015261024181610205565b905091905056fea264697066735822122098a10a97ee4bce9c6292409c29db9913a046b83a28fc4a7829c4a968a3ecfb7c64736f6c63430008120033";

type DemoModfiersConstructorParams =
  | [signer?: Signer]
  | ConstructorParameters<typeof ContractFactory>;

const isSuperArgs = (
  xs: DemoModfiersConstructorParams
): xs is ConstructorParameters<typeof ContractFactory> => xs.length > 1;

export class DemoModfiers__factory extends ContractFactory {
  constructor(...args: DemoModfiersConstructorParams) {
    if (isSuperArgs(args)) {
      super(...args);
    } else {
      super(_abi, _bytecode, args[0]);
    }
  }

  override deploy(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<DemoModfiers> {
    return super.deploy(overrides || {}) as Promise<DemoModfiers>;
  }
  override getDeployTransaction(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): TransactionRequest {
    return super.getDeployTransaction(overrides || {});
  }
  override attach(address: string): DemoModfiers {
    return super.attach(address) as DemoModfiers;
  }
  override connect(signer: Signer): DemoModfiers__factory {
    return super.connect(signer) as DemoModfiers__factory;
  }

  static readonly bytecode = _bytecode;
  static readonly abi = _abi;
  static createInterface(): DemoModfiersInterface {
    return new utils.Interface(_abi) as DemoModfiersInterface;
  }
  static connect(
    address: string,
    signerOrProvider: Signer | Provider
  ): DemoModfiers {
    return new Contract(address, _abi, signerOrProvider) as DemoModfiers;
  }
}