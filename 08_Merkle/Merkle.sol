// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Tree {
    bytes32[] public hashes;
    uint constant n_txs = 4;
    string[n_txs] txs = [
        "TX1: Sherlock -> John",
        "TX2: John -> Mary",
        "TX3: Mary -> John",
        "TX4: Sherlock -> Mary"
    ];

    constructor() {
        for (uint i = 0; i < n_txs; ++i) {
            hashes.push(makeHash(txs[i]));
        }
        uint count = n_txs;
        uint offset = 0;
        while (count > 0) {
            for (uint i = 0; i < count - 1; i += 2) {
                hashes.push(keccak256(
                    abi.encodePacked(
                        hashes[offset + i], hashes[offset + i + 1]
                    )
                ));
            }
            offset += count;
            count /= 2;
        }
    }

    function verify(string memory transaction, uint index, bytes32 root, bytes32[] memory proof) public pure returns(bool) {
        bytes32 hash = makeHash(transaction);
        for(uint i = 0; i < proof.length; i++) {
            bytes32 element = proof[i];

            if(index % 2 == 0) {
                hash = keccak256(abi.encodePacked(hash, element));
            } else {
                hash = keccak256(abi.encodePacked(element, hash));
            }

            index = index / 2;
        }
        return hash == root;
    }

    function encode(string memory input1, string memory input2) public pure returns(bytes memory) {
        return abi.encodePacked(input1, input2);
    }

    function makeHash(string memory input) public pure returns(bytes32) {
        return makeDubHash(input, "");
    }

    function makeDubHash(string memory input1, string memory input2) public pure returns(bytes32) {
        return keccak256(
            encode(input1, input2)
        );
    }
}