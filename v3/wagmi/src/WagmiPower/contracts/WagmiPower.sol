// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWagmiPowerOnKava {
    function balanceOf(address account) external view returns (uint256);
}

contract WagmiPower {

    address public immutable wagmi;
    IWagmiPowerOnKava public immutable wpok;

    constructor(
        address _wagmi,
        IWagmiPowerOnKava _wagmiPowerOnKava
    ) {
        wagmi = _wagmi;
        wpok = _wagmiPowerOnKava;
    }

    function balanceOf(address account) external view returns (uint256 powah) {
        if (wagmi != address(0))
            powah += safeBalanceOf(wagmi, account);
        if (address(wpok) != address(0))
            powah += wpok.balanceOf(account);
    }

    function safeBalanceOf(address token, address owner) private view returns (uint256 balance) {
        (bool success, bytes memory data) = token.staticcall(
            abi.encodeWithSelector(IERC20.balanceOf.selector, owner)
        );
        require(success && data.length >= 32);
        return abi.decode(data, (uint256));
    }

}