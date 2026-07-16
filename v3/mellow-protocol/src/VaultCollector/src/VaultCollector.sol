// SPDX-License-Identifier: BSL-1.1
pragma solidity 0.8.25;

import "./interfaces/ICustomCollector.sol";

contract VaultCollector is ICustomCollector {
    function convertToBaseToken(
        address vault,
        uint256[] memory lpAmounts
    )
        public
        view
        returns (address baseToken, uint256[] memory baseTokenBalances)
    {
        baseToken = IChainlinkOracle(IVault(vault).configurator().priceOracle())
            .baseTokens(vault);
        IVault.ProcessWithdrawalsStack memory stack = IVault(vault)
            .calculateStack();
        baseTokenBalances = new uint256[](lpAmounts.length);
        for (uint256 i = 0; i < lpAmounts.length; i++) {
            baseTokenBalances[i] = Math.mulDiv(
                lpAmounts[i],
                stack.totalValue,
                stack.totalSupply
            );
        }
    }

    function balanceOf(
        address vault,
        address[] memory users,
        bytes memory /* data */
    ) external view returns (address, uint256[] memory) {
        uint256[] memory lpAmounts = new uint256[](users.length);
        for (uint256 i = 0; i < users.length; i++) {
            lpAmounts[i] = IVault(vault).balanceOf(users[i]);
        }
        return convertToBaseToken(vault, lpAmounts);
    }
}
