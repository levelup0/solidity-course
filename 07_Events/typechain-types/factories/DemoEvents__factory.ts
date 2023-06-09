/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { Signer, utils, Contract, ContractFactory, Overrides } from "ethers";
import type { Provider, TransactionRequest } from "@ethersproject/providers";
import type { PromiseOrValue } from "../common";
import type { DemoEvents, DemoEventsInterface } from "../DemoEvents";

const _abi = [
  {
    inputs: [],
    stateMutability: "nonpayable",
    type: "constructor",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: "address",
        name: "_from",
        type: "address",
      },
      {
        indexed: false,
        internalType: "uint256",
        name: "_amount",
        type: "uint256",
      },
      {
        indexed: false,
        internalType: "uint256",
        name: "_timestamp",
        type: "uint256",
      },
    ],
    name: "Paid",
    type: "event",
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
  {
    stateMutability: "payable",
    type: "receive",
  },
] as const;

const _bytecode =
  "0x608060405234801561001057600080fd5b50336000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555061033d806100606000396000f3fe60806040526004361061002d5760003560e01c80631b9265b81461004157806351cff8d91461004b5761003c565b3661003c5761003a610074565b005b600080fd5b610049610074565b005b34801561005757600080fd5b50610072600480360381019061006d91906101ec565b6100b1565b005b7fdf9a51129930649214df58f542322c245372c6f2fa6fc3c9b40d927c597cd2303334426040516100a793929190610253565b60405180910390a1565b60008054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461013f576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610136906102e7565b60405180910390fd5b8073ffffffffffffffffffffffffffffffffffffffff166108fc479081150290604051600060405180830381858888f19350505050158015610185573d6000803e3d6000fd5b5050565b600080fd5b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b60006101b98261018e565b9050919050565b6101c9816101ae565b81146101d457600080fd5b50565b6000813590506101e6816101c0565b92915050565b60006020828403121561020257610201610189565b5b6000610210848285016101d7565b91505092915050565b60006102248261018e565b9050919050565b61023481610219565b82525050565b6000819050919050565b61024d8161023a565b82525050565b6000606082019050610268600083018661022b565b6102756020830185610244565b6102826040830184610244565b949350505050565b600082825260208201905092915050565b7f596f7520617265206e6f7420616e206f776e6572210000000000000000000000600082015250565b60006102d160158361028a565b91506102dc8261029b565b602082019050919050565b60006020820190508181036000830152610300816102c4565b905091905056fea2646970667358221220e793d51b810512acc9413f52c262e0ccf35551d39a8dc4c533ee556e4641706c64736f6c63430008120033";

type DemoEventsConstructorParams =
  | [signer?: Signer]
  | ConstructorParameters<typeof ContractFactory>;

const isSuperArgs = (
  xs: DemoEventsConstructorParams
): xs is ConstructorParameters<typeof ContractFactory> => xs.length > 1;

export class DemoEvents__factory extends ContractFactory {
  constructor(...args: DemoEventsConstructorParams) {
    if (isSuperArgs(args)) {
      super(...args);
    } else {
      super(_abi, _bytecode, args[0]);
    }
  }

  override deploy(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<DemoEvents> {
    return super.deploy(overrides || {}) as Promise<DemoEvents>;
  }
  override getDeployTransaction(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): TransactionRequest {
    return super.getDeployTransaction(overrides || {});
  }
  override attach(address: string): DemoEvents {
    return super.attach(address) as DemoEvents;
  }
  override connect(signer: Signer): DemoEvents__factory {
    return super.connect(signer) as DemoEvents__factory;
  }

  static readonly bytecode = _bytecode;
  static readonly abi = _abi;
  static createInterface(): DemoEventsInterface {
    return new utils.Interface(_abi) as DemoEventsInterface;
  }
  static connect(
    address: string,
    signerOrProvider: Signer | Provider
  ): DemoEvents {
    return new Contract(address, _abi, signerOrProvider) as DemoEvents;
  }
}
