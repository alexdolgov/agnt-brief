// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "./interfaces/IWallet.sol";
import "./interfaces/IPlatform.sol";
import "./interfaces/ILottery.sol";
import "./interfaces/token/IERC20.sol";
import "./libs/utils/LUtil.sol";
import "./access/Ownable.sol";

abstract contract Wallet is IWallet, Ownable {
    bytes4 private constant SELECTOR =
        bytes4(keccak256(bytes("transfer(address,uint256)")));

    function _safeTransfer(
        address token,
        address to,
        uint256 value
    ) internal {
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(SELECTOR, to, value)
        );
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            "TRANSFER_FAILED"
        );
    }

    function balance() public view override returns (uint256) {
        return IERC20(_getTokenAddress()).balanceOf(address(this));
    }

    function transferTo(address recipient, uint256 amount)
        external
        override
        onlyOwner
    {
        _safeTransfer(_getTokenAddress(), recipient, amount);
    }

    function _getTokenAddress() internal view returns (address) {
        address tokenAddress = IPlatform(ILottery(owner()).getPlatformAddress())
            .getTokenAddress(owner());
        require(tokenAddress != address(0), "Wallet: Invalid token address");
        return tokenAddress;
    }

    function approve(address approver, uint256 amount)
        external
        override
        onlyOwner
    {
        IERC20(_getTokenAddress()).approve(approver, amount);
    }
}

contract BoosterWallet is Wallet {
    function topUpJackpot(address jackpot, uint256 amount) external onlyOwner {
        require(amount > 0, "Amount must be more than 0");
        _safeTransfer(_getTokenAddress(), jackpot, amount);
    }
}

contract GameWallet is Wallet {}

contract JackpotWallet is Wallet {}
