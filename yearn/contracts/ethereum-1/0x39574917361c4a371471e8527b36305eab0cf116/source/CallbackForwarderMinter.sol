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

contract YPrismaForwarderCallbackMinter {
    uint256 public constant BPS = 10_000;
    uint256 public constant PRECISION = 1e18;
    address public constant YPRISMA = 0xe3668873D944E4A949DA05fc8bDE419eFF543882;
    address public immutable YEARN_LOCKER;
    address public immutable FACTORY;
    uint256 public feeOnMints;
    uint256 public feeOnRentals;
    address[] public rewardTokens;

    event FeesConfigured(uint256 feeOnMints, uint256 feeOnRentals);
    event RewardTokenSet(address indexed token);

    constructor(address _factory, uint256 _feeOnMints, uint256 _feeOnRentals) {
        YEARN_LOCKER = IYPrisma(YPRISMA).ylocker();
        FACTORY = _factory;
        feeOnMints = _feeOnMints;
        feeOnRentals = _feeOnRentals;
        emit FeesConfigured(_feeOnMints, _feeOnRentals);
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
        if (_receiver == YEARN_LOCKER) return feeOnMints;
        return feeOnRentals;
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

    function configureFees(uint256 _feeOnMints, uint256 _feeOnRentals) external {
        require(
            msg.sender == IYLocker(YEARN_LOCKER).governance() || 
            msg.sender == YEARN_LOCKER,
            "!authorized"
        );
        require(_feeOnMints <= BPS, "Invalid fee on mints");
        require(_feeOnRentals <= BPS, "Invalid fee on rentals");
        feeOnMints = _feeOnMints;
        feeOnRentals = _feeOnRentals;
        emit FeesConfigured(_feeOnMints, _feeOnRentals);
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