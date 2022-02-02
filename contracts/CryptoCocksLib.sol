// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

library CryptoCocksLib {
    string private constant b1 = "b1";
    string private constant b2 = "b2";
    string private constant b3 = "b3";
    string private constant b4 = "b4";
    string private constant b5 = "b5";

    function getIdentifier(uint id) public pure returns (string memory cid) {
        string memory batch;

        if (id <= 2000) {
            batch = b1;
        } else if (id <= 4000) {
            batch = b2;
        } else if (id <= 6000) {
            batch = b3;
        } else if (id <= 8000) {
            batch = b4;
        } else {
            batch = b5;
        }

        return string(abi.encodePacked("ipfs://", batch, "/"));
    }
}
