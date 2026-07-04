// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../utils/TrustCaller.sol";
import "../utils/SafeMath.sol";

contract Seed is ERC20, Ownable, TrustCaller {
    using SafeMath for uint256;

    uint256 constant FEE_ALLOCATION_BASIS = 500;
    uint256 constant TOTAL_ALLOCATION_BASIS = 10000;
    uint256 constant MAXUINT =
        115792089237316195423570985008687907853269984665640564039457584007913129639935;
    address public feeWallet;

    event feeWalletUpdated(address sender, address newFeeWallet);

    constructor(address _feeWallet) ERC20("Seed", "SEED") {
        feeWallet = _feeWallet;
    }

    function mint(address toAccount, uint256 amount) external onlyTrustCaller {
        uint256 fee = amount.mul(FEE_ALLOCATION_BASIS).div(TOTAL_ALLOCATION_BASIS);
        uint256 toAmount = amount.sub(fee);
        _mint(feeWallet, fee);
        _mint(toAccount, toAmount);
    }   

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function setFeeWallet(address _feeWallet) external onlyOwner {
        feeWallet = _feeWallet;
        emit feeWalletUpdated(msg.sender, _feeWallet);
    }
}
