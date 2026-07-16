// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import "contracts/helpers/TokenBalanceHelper.sol";

interface Wrapper {
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
    function depositFor(address account, uint256 amount) external;
    function withdrawTo(address account, uint256 amount) external;
}

/// @notice Contract designed to model wrappers with 1:1 relationship
contract WrapperModeler is TokenBalanceHelper {
    function depositETHWrapper(address payable wrapper, uint256 sellAmount)
        external
        payable
        returns (uint256 buyAmount)
    {
        (bool ok,) = wrapper.call{value: sellAmount}(abi.encodeWithSignature("deposit()"));
        require(ok, "!deposit");
        buyAmount = sellAmount;
    }

    function depositWrapper(Wrapper wrapper, uint256 sellAmount) external payable returns (uint256) {
        wrapper.deposit(sellAmount);
        return sellAmount;
    }

    function withdrawWrapper(Wrapper wrapper, uint256 sellAmount) external payable returns (uint256) {
        wrapper.withdraw(sellAmount);
        return sellAmount;
    }

    function depositForWrapper(Wrapper wrapper, uint256 sellAmount, address buyToken)
        external
        payable
        returns (uint256 buyAmount)
    {
        uint256 startBalance = getBalance(buyToken, address(this));
        wrapper.depositFor(address(this), sellAmount);
        uint256 endBalance = getBalance(buyToken, address(this));
        buyAmount = endBalance - startBalance;
    }

    function withdrawToWrapper(Wrapper wrapper, uint256 sellAmount, address buyToken)
        external
        payable
        returns (uint256 buyAmount)
    {
        uint256 startBalance = getBalance(buyToken, address(this));
        wrapper.withdrawTo(address(this), sellAmount);
        uint256 endBalance = getBalance(buyToken, address(this));
        buyAmount = endBalance - startBalance;
    }
}
