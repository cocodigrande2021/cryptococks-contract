// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

library CryptoCocksLib {
    string private constant B1 = "b1";
    string private constant B2 = "b2";
    string private constant B3 = "b3";
    string private constant B4 = "b4";
    string private constant B5 = "b5";

    function getCid(uint id) public pure returns (string memory cid) {
        string memory batch;

        if (id <= 2000) {
            batch = B1;
        } else if (id <= 4000) {
            batch = B2;
        } else if (id <= 6000) {
            batch = B3;
        } else if (id <= 8000) {
            batch = B4;
        } else {
            batch = B5;
        }

        return string(abi.encodePacked("ipfs://", batch, "/"));
    }
}
