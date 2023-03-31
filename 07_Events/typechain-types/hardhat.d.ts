/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */

import { ethers } from "ethers";
import {
  FactoryOptions,
  HardhatEthersHelpers as HardhatEthersHelpersBase,
} from "@nomiclabs/hardhat-ethers/types";

import * as Contracts from ".";

declare module "hardhat/types/runtime" {
  interface HardhatEthersHelpers extends HardhatEthersHelpersBase {
    getContractFactory(
      name: "DemoChecks",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.DemoChecks__factory>;
    getContractFactory(
      name: "DemoEvent",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.DemoEvent__factory>;
    getContractFactory(
      name: "DemoEvents",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.DemoEvents__factory>;
    getContractFactory(
      name: "DemoModfiers",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.DemoModfiers__factory>;

    getContractAt(
      name: "DemoChecks",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.DemoChecks>;
    getContractAt(
      name: "DemoEvent",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.DemoEvent>;
    getContractAt(
      name: "DemoEvents",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.DemoEvents>;
    getContractAt(
      name: "DemoModfiers",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.DemoModfiers>;

    // default types
    getContractFactory(
      name: string,
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<ethers.ContractFactory>;
    getContractFactory(
      abi: any[],
      bytecode: ethers.utils.BytesLike,
      signer?: ethers.Signer
    ): Promise<ethers.ContractFactory>;
    getContractAt(
      nameOrAbi: string | any[],
      address: string,
      signer?: ethers.Signer
    ): Promise<ethers.Contract>;
  }
}