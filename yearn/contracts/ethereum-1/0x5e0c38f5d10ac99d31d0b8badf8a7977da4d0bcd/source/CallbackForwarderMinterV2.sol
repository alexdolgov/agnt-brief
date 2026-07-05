// SPDX-License-Identifier: GNU AGPLv3
pragma solidity ^0.8.23;

import {IERC20, SafeERC20} from "@openzeppelin/contracts@v4.9.3/token/ERC20/utils/SafeERC20.sol";

interface IYPrisma {
    function delegate_mint(address _recipient, uint256 _amount) external returns (uint256);
    function ylocker() external view returns (address);
}

interface IYLocker {
    function proxy() external view returns (address);
    function governance() external view returns (address);
}

interface IYProxy {
    function collectTokensFromLocker(address token, uint256 amount, address recipient) external returns (uint256);
}

contract YPrismaForwarderCallbackMinterV2 {
    uint256 public constant BPS = 10_000;
    uint256 public constant PRECISION = 1e18;
    address public constant YPRISMA = 0xe3668873D944E4A949DA05fc8bDE419eFF543882;
    address public immutable YEARN_LOCKER;
    address public immutable FACTORY;
    FeeData public feeOnMint;
    FeeData public feeOnRental;
    address[] public rewardTokens;

    struct FeeData {
        uint128 maxFee;
        uint128 minFee;
    }

    event FeesConfigured(FeeData feeOnMint, FeeData feeOnRental);
    event RewardTokenSet(address indexed token);

    constructor(address _factory, FeeData memory _feeOnMint, FeeData memory _feeOnRental) {
        YEARN_LOCKER = IYPrisma(YPRISMA).ylocker();
        FACTORY = _factory;
        _configureFees(_feeOnMint, _feeOnRental);
    }

    /**
        @dev Receives calls when a claim is routed through a forwarder to Yearn's locker.
    */
    function getFeePct(
        address _claimant,
        address _receiver,
        address _boostDelegate,
        uint256 _amount,
        uint256 _previousAmount,
        uint256 _totalWeeklyEmissions
    ) external view returns (uint256) {
        uint nextWeekStart = (block.timestamp / 1 weeks + 1) * 1 weeks;
        uint timeRemaining = nextWeekStart - block.timestamp;
        if (_receiver == YEARN_LOCKER) {
            FeeData memory fee = feeOnMint;
            return (fee.maxFee - fee.minFee) * timeRemaining / 1 weeks + fee.minFee;
        }
        FeeData memory fee = feeOnRental;
        return (fee.maxFee - fee.minFee) * timeRemaining / 1 weeks + fee.minFee;
    }

    /**
        @dev
            Receives calls when a claim is routed through a forwarder to Yearn's locker.
            The factory should be the only trusted caller, particularly if there is sensitive logic.
    */
    function delegateCallback(
        address _claimant,
        address _receiver,
        address _boostDelegate,
        uint256 _amount,
        uint256 _adjustedAmount,
        uint256 _fee,
        uint256 _previousAmount,
        uint256 _totalWeeklyEmissions
    ) external returns (bool) {
        require(msg.sender == FACTORY, "!factory");
        return true;
    }

    /**
        @notice 
            Receive calls to mint yPRISMA when user emissions claims specify Yearn's
            locker as receiver, and the boost delegate has a forwarder configured.
        @dev
            Sensitive function. Only callable by the trusted factory contract.
    */
    function receiverCallback(
        address _claimant,
        address _receiver,
        uint256 _adjustedAmount
    ) external returns (bool) {
        require(msg.sender == FACTORY, "!factory");

        // Should be unreachable if receiver != yearn, but short circuit just in case.
        if (_receiver != YEARN_LOCKER) return true;
        
        IYPrisma(YPRISMA).delegate_mint(_claimant, _adjustedAmount / PRECISION * PRECISION);

        for (uint i = 0; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];
            uint256 amount = IERC20(token).balanceOf(YEARN_LOCKER);
            if (amount > 0) {
                IYProxy(IYLocker(YEARN_LOCKER).proxy()).collectTokensFromLocker(token, amount, _claimant);
            }
        }

        return true;
    }

    function configureFees(FeeData memory _feeOnMint, FeeData memory _feeOnRental) external {
        require(
            msg.sender == IYLocker(YEARN_LOCKER).governance() || 
            msg.sender == YEARN_LOCKER,
            "!authorized"
        );
        _configureFees(_feeOnMint, _feeOnRental);
    }

    function _configureFees(FeeData memory _feeOnMint, FeeData memory _feeOnRental) internal {
        require(_feeOnMint.maxFee <= BPS, "Invalid fee on mints");
        require(_feeOnRental.maxFee <= BPS, "Invalid fee on rentals");
        require(_feeOnMint.maxFee >= _feeOnMint.minFee, "Max but be higher");
        require(_feeOnRental.maxFee >= _feeOnRental.minFee, "Max but be higher");
        feeOnMint = _feeOnMint;
        feeOnRental = _feeOnRental;
        emit FeesConfigured(_feeOnMint, _feeOnRental);
    }

    function setRewardTokens(address[] calldata _tokenAddresses) external {
        require(
            msg.sender == IYLocker(YEARN_LOCKER).governance() || 
            msg.sender == YEARN_LOCKER,
            "!authorized"
        );
        delete rewardTokens;
        for (uint i = 0; i < _tokenAddresses.length; i++) {
            rewardTokens.push(_tokenAddresses[i]);
            emit RewardTokenSet(_tokenAddresses[i]);
        }
    }
}