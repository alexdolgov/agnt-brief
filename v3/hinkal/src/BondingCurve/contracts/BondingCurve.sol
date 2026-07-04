// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.7.6;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "./interfaces/IERC20Metadata.sol";

contract BondingCurve is Ownable {
    using SafeERC20 for IERC20Metadata;

    IERC20Metadata public immutable stargate;
    IERC20Metadata public immutable stableCoin;

    uint256 public constant DURATION = 3 days;
    uint256 public slopeNumerator;
    uint256 public slopeDenominator;
    uint256 public endTime;
    uint256 public convertRate;
    uint256 public initialPrice; //stargate decimals, cast once
    uint256 public immutable totalStargateForBonding; //stargate decimals
    uint256 public totalStargateBonded; //stargate decimals

    address immutable public stargateTreasury;

    event Started(uint endTime);
    event Bonded(address user, uint bondQuantity, uint stableQty);
    event Withdrawn(address coin, address to, uint tokenQty);

    constructor(
        address payable _stargateTreasury,
        IERC20Metadata _stargate,
        IERC20Metadata _stableCoin,
        uint256 _totalStargateForBonding //stargate decimals
    ) {
        require(
            _stableCoin.decimals() <= _stargate.decimals(),
            "stable coin not supported"
        );

        stargateTreasury = _stargateTreasury;
        convertRate = 10 ** (_stargate.decimals() - _stableCoin.decimals());
        stargate = _stargate;
        stableCoin = _stableCoin;
        totalStargateForBonding = _totalStargateForBonding;
    }

    modifier notEnded() {
        require(endTime != 0, "bonding not started");
        require(block.timestamp < endTime, "bonding ended");
        _;
    }

    // ============================ External =======================================

    function bond(
        uint256 _targetBondQuantity, // stargate decimals
        uint256 _maxAmountToPay // stableCoin decimals
    ) external notEnded {
        (uint256 amountToPay, uint256 bondQuantity) = _getCostFromQuantity(
            _targetBondQuantity
        );
        require(amountToPay <= _maxAmountToPay, "exceeds user max amount");

        _executeBonding(amountToPay, bondQuantity);
    }

    function bondWithCost(
        uint256 _totalBondCost, // stableCoin decimals
        uint256 _minAmountToBuy // stargateCoin decimals
    ) external notEnded {
        (uint256 amountToPay, uint256 bondQuantity) = _getQuantityFromCost(
            _totalBondCost
        );
        require(bondQuantity >= _minAmountToBuy, "under user min amount");

        _executeBonding(amountToPay, bondQuantity);
    }

    // ============================ OnlyOwner =====================================

    function start(
        uint256 _initialPrice,       
        uint256 _slopeNumerator,
        uint256 _slopeDenominator
    ) external onlyOwner {
        require(endTime == 0, "Bonding already started");
        require(
            stargate.balanceOf(address(this)) == totalStargateForBonding,
            "please provision stargate before start"
        );
        initialPrice = _toStargateDecimals(_initialPrice);
        slopeNumerator = _slopeNumerator;
        slopeDenominator = _slopeDenominator;
        endTime = block.timestamp + DURATION;
        emit Started(endTime);
    }

    function withdrawStargate(address _to, uint _amount) external onlyOwner {
        require(endTime != 0, "bonding not started");
        require(block.timestamp >= endTime, "bonding in progress");
        stargate.safeTransfer(_to, _amount);
        emit Withdrawn(address(stargate), _to, _amount);
    }

    // ============================ Internal =======================================

    function _executeBonding(uint amountToPay, uint bondQuantity) internal {
        stableCoin.safeTransferFrom(msg.sender, stargateTreasury, amountToPay);
        stargate.safeTransfer(msg.sender, bondQuantity);

        totalStargateBonded += bondQuantity;

        emit Bonded(msg.sender, bondQuantity, amountToPay);
    }

    function _getCostFromQuantity(uint _targetQuantity) internal view returns (uint, uint){
        uint targetQuantity = _targetQuantity; //stargate decimals
        uint quota = totalStargateForBonding - totalStargateBonded;
        if(targetQuantity > quota){
            targetQuantity = quota;
        }
        require(
            targetQuantity > 0,
            "BondingCurve: There are no remaining tokens to bond"
        );

        // Linear price curve, S = K*T + I
        // U = (S + (S + kt))/2 * t
        uint startPrice = initialPrice + (totalStargateBonded * slopeNumerator / slopeDenominator); // in stargate decimals
        uint endPrice = startPrice + (targetQuantity * slopeNumerator / slopeDenominator); // in stargate decimals
        uint avgPrice = (startPrice + endPrice) / 2; // in stargate decimals

        // totalStargateBonded and targetQuantity are in stargate decimals
        uint cost = _toStableCoinDecimals(avgPrice * targetQuantity / (10 ** stargate.decimals())); //stableCoin decimals

        return (cost, targetQuantity);
    }

    function _getQuantityFromCost(uint _totalCost) internal view returns (uint, uint){
        uint totalCost = _toStargateDecimals(_totalCost); // in stargate decimals
        uint startPrice = initialPrice + (totalStargateBonded * slopeNumerator / slopeDenominator); // in stargate decimals

        uint val = (startPrice ** 2) + (2 * totalCost * 10 ** stargate.decimals() * slopeNumerator / slopeDenominator);
        uint quantity = (_sqrt(val * 10 ** 18) / 10 ** 9 - startPrice) * slopeDenominator / slopeNumerator;

        uint quota = totalStargateForBonding - totalStargateBonded;
        if(quantity > quota){
            return _getCostFromQuantity(quota);
        }

        return (_totalCost, quantity);
    }

    function _toStargateDecimals(uint _amount) internal view returns (uint) {
        return _amount * convertRate;
    }

    function _toStableCoinDecimals(uint _amount) internal view returns (uint) {
        return _amount / convertRate;
    }

    // babylonian method (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    function _sqrt(uint256 y) internal pure returns (uint256) {
        y = y * 10**18;
        uint256 z;
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
        return z / 10**9;
    }
}
