// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";
import {BeaconProxyFactoryCreate2} from "src/proxy/BeaconProxyFactoryCreate2.sol";
import {Pair} from "src/Pair.sol";
import {IGT3Voter} from "src/interfaces/IGT3Voter.sol";

/// @title PairFactory
/// @notice Implementation of IPairFactory for creating and managing trading pairs
/// @dev Implements UUPS proxy pattern with two-step ownership transfer
/// @custom:security-contact security@yourproject.com
contract PairFactory is IPairFactory, BeaconProxyFactoryCreate2, UUPSOwnable2Step {
    /// @inheritdoc IPairFactory
    uint256 public constant GT3_DEFAULT_FEE_SELL = 500;
    /// @inheritdoc IPairFactory
    uint256 public constant GT3_DEFAULT_FEE_BUY = 1;

    /// @inheritdoc IPairFactory
    address public pairFeesFactory;
    /// @inheritdoc IPairFactory
    address public voter;
    /// @inheritdoc IPairFactory
    uint256 public fee;
    /// @inheritdoc IPairFactory
    uint256 public feeTreasuryPercentage;
    /// @inheritdoc IPairFactory
    address public treasury;

    /// @inheritdoc IPairFactory
    address[] public allPairs;

    /// @inheritdoc IPairFactory
    mapping(address => bool) public isPair;
    /// @inheritdoc IPairFactory
    mapping(address => mapping(address => address)) public getPair;
    /// @inheritdoc IPairFactory
    mapping(address tokenIn => mapping(address tokenOut => uint256 fee)) public customFee;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address owner_,
        uint256 fee_,
        uint256 treasuryPercentage_,
        address pairImplementation_,
        address pairFeesFactory_
    ) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
        __BeaconProxyFactory_init(owner_, pairImplementation_);
        _updateFee(fee_);
        _updateFeeTreasuryPercentage(treasuryPercentage_);
        _updateFeesFactory(pairFeesFactory_);
        _updateTreasury(owner_);
    }

    /// @inheritdoc IPairFactory
    function allPairsLength() public view returns (uint256) {
        return allPairs.length;
    }

    /// @inheritdoc IPairFactory
    function getFee(address token0_, address token1_, address tokenIn_, address tokenOut_)
        public
        view
        returns (uint256)
    {
        uint256 _fee;
        if (tokenIn_ == address(0) && tokenOut_ == address(0)) {
            return fee;
        } else {
            if (tokenIn_ == address(0)) tokenIn_ = tokenOut_ == token0_ ? token1_ : token0_;
            if (tokenOut_ == address(0)) tokenOut_ = tokenIn_ == token0_ ? token1_ : token0_;
            _fee = customFee[tokenIn_][tokenOut_];
        }
        if (_fee == 0) _fee = fee;
        return _fee;
    }

    /// @inheritdoc IPairFactory
    function updateFee(uint256 newFee_) public onlyOwner {
        _updateFee(newFee_);
    }

    /// @inheritdoc IPairFactory
    function updateFeeTreasuryPercentage(uint256 newFeePercentage_) public onlyOwner {
        _updateFeeTreasuryPercentage(newFeePercentage_);
    }

    /// @inheritdoc IPairFactory
    function updateTreasury(address newTreasury_) public onlyOwner {
        _updateTreasury(newTreasury_);
    }

    /// @inheritdoc IPairFactory
    function updateCustomFee(address tokenIn_, address tokenOut_, uint256 fee_) public onlyOwner {
        _updateCustomFee(tokenIn_, tokenOut_, fee_);
    }

    /// @inheritdoc IPairFactory
    function updateFeesFactory(address feesFactory_) public onlyOwner {
        _updateFeesFactory(feesFactory_);
    }

    /// @inheritdoc IPairFactory
    function setVoter(address voter_) external {
        if (voter != address(0)) revert PairFactoryVoterAlreadySetted();
        _updateVoter(voter_);
    }

    /// @inheritdoc IPairFactory
    function updateVoter(address voter_) external onlyOwner {
        _updateVoter(voter_);
    }

    /// @inheritdoc IPairFactory
    function createPair(address tokenA_, address tokenB_) external returns (address pair_) {
        if (tokenA_ == tokenB_) revert PairFactorySameAddress();
        (address token0_, address token1_) = tokenA_ < tokenB_ ? (tokenA_, tokenB_) : (tokenB_, tokenA_);
        if (token0_ == address(0)) revert PairFactoryZeroAddress();
        if (getPair[token0_][token1_] != address(0)) revert PairFactoryPairAlreadyExists();

        pair_ = _createPair(token0_, token1_);

        if (IGT3Voter(voter).gauges(pair_) == address(0)) {
            try IGT3Voter(voter).createGauge(pair_) returns (address gauge) {
                emit CreateGauge(pair_, gauge, tokenA_, tokenB_);
            } catch {
                emit CreateGaugeFailed(pair_);
            }
        }

        address gt3_ = IGT3Voter(voter).gt3();
        if (tokenA_ == gt3_) {
            _updateCustomFee(tokenA_, tokenB_, GT3_DEFAULT_FEE_SELL);
            _updateCustomFee(tokenB_, tokenA_, GT3_DEFAULT_FEE_BUY);
        } else if (tokenB_ == gt3_) {
            _updateCustomFee(tokenA_, tokenB_, GT3_DEFAULT_FEE_BUY);
            _updateCustomFee(tokenB_, tokenA_, GT3_DEFAULT_FEE_SELL);
        }

        emit PairFactoryPairCreated(token0_, token1_, pair_);
    }

    /// @dev Creates a new pair using CREATE2 with deterministic address
    function _createPair(address token0_, address token1_) private returns (address pair_) {
        bytes32 salt_ = keccak256(abi.encodePacked(token0_, token1_));
        bytes memory initializeCalldata_ =
            abi.encodeWithSelector(Pair.initialize.selector, token0_, token1_, pairFeesFactory);
        pair_ = _create2BeaconProxy(initializeCalldata_, salt_);
        getPair[token0_][token1_] = pair_;
        getPair[token1_][token0_] = pair_;
        allPairs.push(pair_);
        isPair[pair_] = true;
    }

    /// @dev Updates voter address with zero-address check
    function _updateVoter(address voter_) private {
        if (voter_ == address(0)) revert PairFactoryVoterZeroAddress();
        voter = voter_;
        emit UpdateVoter(voter);
    }

    /// @dev Updates the default fee and emits event
    function _updateFee(uint256 newFee_) private {
        fee = newFee_;
        emit UpdateFee(fee);
    }

    /// @dev Updates the treasury fee percentage and emits event
    function _updateFeeTreasuryPercentage(uint256 newFee_) private {
        feeTreasuryPercentage = newFee_;
        emit UpdateFeeTreasuryPercentage(feeTreasuryPercentage);
    }

    /// @dev Updates the treasury address and emits event
    function _updateTreasury(address newTreasury_) private {
        treasury = newTreasury_;
        emit UpdateTreasury(newTreasury_);
    }

    /// @dev Updates custom fee for a token pair and emits event
    function _updateCustomFee(address tokenIn_, address tokenOut_, uint256 fee_) private {
        customFee[tokenIn_][tokenOut_] = fee_;
        emit UpdateCustomFee(tokenIn_, tokenOut_, fee_);
    }

    /// @dev Updates the fees factory address and emits event
    function _updateFeesFactory(address feesFactory_) private {
        pairFeesFactory = feesFactory_;
        emit UpdatePairFeesFactory(pairFeesFactory);
    }
}
