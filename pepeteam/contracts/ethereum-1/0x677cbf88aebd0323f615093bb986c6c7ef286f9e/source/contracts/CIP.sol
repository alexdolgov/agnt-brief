// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./utils.sol";
import "./IWavesCaller.sol";

library CIP {
    function deposit(
        uint16 chainId_,
        string memory contract_,
        address protocolCaller_,
        address account_,
        string memory token_,
        uint256 amount_,
        string memory referrer_
    ) internal {
        string[] memory args = new string[](5);
        args[0] = ""; // require empty string (see WavesCaller CIP)
        args[1] = Utils.toHexString(account_);
        args[2] = token_;
        args[3] = Utils.U256ToHex(amount_);
        args[4] = referrer_;

        IWavesCaller(protocolCaller_).call(
            chainId_,
            contract_,
            "deposit",
            args
        );
    }
}
