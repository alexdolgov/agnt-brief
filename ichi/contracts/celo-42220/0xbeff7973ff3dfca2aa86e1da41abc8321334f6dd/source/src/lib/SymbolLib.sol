// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IAegisVaultFactory } from "../interfaces/IAegisVaultFactory.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

library SymbolLib {
    function computeIDVsymbol(address depositToken, address targetToken, uint256 vaultIndex) public view returns (string memory) {
        string memory token0Symbol = ERC20(depositToken).symbol();
        string memory token1Symbol = ERC20(targetToken).symbol();
        // Format: IDV-[ammName]-deposit-target-index
        return string(
            abi.encodePacked(
                "IDV-", IAegisVaultFactory(msg.sender).ammName(), "-", Strings.toString(vaultIndex), "-", token0Symbol, "-", token1Symbol
            )
        );
    }
}
