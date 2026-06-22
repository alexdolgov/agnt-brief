// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
}

contract MulticallErc20Balance {

    function getBalances(
        address[] memory tokens, 
        address[] memory accounts
    ) external view returns (uint256[][] memory) 
    {
        uint256[][] memory balances = new uint256[][](accounts.length);

        for (uint256 i = 0; i < accounts.length; i++) {
            balances[i] = new uint256[](tokens.length);

            for (uint256 j = 0; j < tokens.length; j++) {
                balances[i][j] = IERC20(tokens[j]).balanceOf(accounts[i]);
            }
        }
        return balances;
    }
}