// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

import "./constants/addresses.sol";
import "./constants/roles.sol";
import "./tokens/interfaces/IMintableERC20.sol";
import "./AddressAccessor.sol";
import "./USDRBonding.sol";

contract DAIBond is AddressAccessor, Pausable {
    struct Vesting {
        uint256 usdr;
        uint256 maturity;
        uint256 initialAmount;
        uint256 fullyVestedAmount;
        uint256 claimed;
    }

    mapping(address => Vesting) public vesting;

    uint16 public immutable apr; // APR * 100 (e.g. 100 = 1%)
    uint256 public immutable maturity;

    address public excessUSDRReceiver;

    constructor(uint256 maturityDays, uint16 apr_) {
        apr = apr_;
        maturity = maturityDays * 1 days;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function claimAll() external {
        claim(claimable(msg.sender));
    }

    function deposit(uint256 amount) external whenNotPaused {
        (address bonding, address exchange) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(USDR_BONDING_ADDRESS, USDR_EXCHANGE_ADDRESS)
            ),
            (address, address)
        );
        uint256 available = USDRBonding(bonding).available();
        require(available >= amount, "amount exceeds availability");
        address who = msg.sender;
        uint256 amountOut = IExchange(exchange).scaleFromUnderlying(amount);
        Vesting memory v = vesting[who];
        v.initialAmount = v.initialAmount + _earned(v) + amountOut - v.claimed;
        v.fullyVestedAmount = v.initialAmount + (v.initialAmount * apr) / 10000;
        v.maturity = block.timestamp + maturity;
        v.claimed = 0;
        v.usdr += USDRBonding(bonding).mint(
            amount,
            v.fullyVestedAmount - v.usdr,
            who
        );
        vesting[who] = v;
    }

    function earned(address account) external view returns (uint256) {
        return _earned(vesting[account]);
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) whenNotPaused {
        _pause();
    }

    function recoverLostTokens(address token)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (!paused()) {
            (address usdr, address tngbl) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(USDR_ADDRESS, TNGBL_ADDRESS)
                ),
                (address, address)
            );
            require(token != tngbl && token != usdr);
        }
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(msg.sender, balance);
    }

    function setExcessUSDRReceiver(address receiver)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        excessUSDRReceiver = receiver;
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) whenPaused {
        _unpause();
    }

    function claimable(address account) public view returns (uint256) {
        Vesting memory v = vesting[account];
        uint256 endTime = v.maturity;
        if (endTime < maturity) return 0;
        if (endTime <= block.timestamp) {
            return v.fullyVestedAmount - v.claimed;
        }
        uint256 startTime = endTime - maturity;
        uint256 vestingDuration = block.timestamp - startTime;
        return (v.fullyVestedAmount * vestingDuration) / maturity - v.claimed;
    }

    function claim(uint256 amount) public {
        address who = msg.sender;
        uint256 maxAmount = claimable(msg.sender);
        require(amount <= maxAmount, "amount exceeds claimable amount");
        address usdr = addressProvider.getAddress(USDR_ADDRESS);
        Vesting memory v = vesting[who];
        uint256 totalClaimed = v.claimed + amount;
        uint256 remainingUSDR = v.usdr - amount;
        if (totalClaimed == v.fullyVestedAmount) {
            if (remainingUSDR > 0) {
                if (excessUSDRReceiver == address(0)) {
                    amount += remainingUSDR;
                } else {
                    IERC20(usdr).transfer(excessUSDRReceiver, remainingUSDR);
                }
            }
            delete vesting[who];
        } else {
            vesting[who].claimed = totalClaimed;
            vesting[who].usdr = remainingUSDR;
        }
        IERC20(usdr).transfer(who, amount);
    }

    function _earned(Vesting memory v) private view returns (uint256) {
        uint256 endTime = v.maturity;
        if (endTime < maturity) return 0;
        if (endTime <= block.timestamp) {
            return v.fullyVestedAmount - v.initialAmount;
        }
        uint256 startTime = endTime - maturity;
        uint256 vestingDuration = block.timestamp - startTime;
        return
            ((v.fullyVestedAmount - v.initialAmount) * vestingDuration) /
            maturity;
    }
}
