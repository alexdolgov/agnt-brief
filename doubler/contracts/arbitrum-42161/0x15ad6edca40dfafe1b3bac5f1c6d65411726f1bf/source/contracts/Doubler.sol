// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import './interfaces/IFastPriceFeed.sol';
import './interfaces/IDoublerFactory.sol';
import './interfaces/IDoubler.sol';
import './interfaces/IRBToken.sol';
import './interfaces/IWETH.sol';

/// @title Doubler Contract
/// @notice This contract handles the operations of a liquidity pool, including deposits, withdrawals, and rebalancing.
contract Doubler is IDoubler, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @dev Slip percentage (basis points)
    uint16 private constant _slip = 50;
    /// @dev Basis points denominator
    uint16 private constant _perMil = 1000;

    /// @dev Factory contract address
    address private _factory;
    /// @dev Fast price feed contract address
    address private _fastPriceFeed;
    /// @dev Pool parameters
    Pool private _pool;
    /// @dev Mapping to track the last block called for each address
    mapping(address => uint256) private _lastBlockCalled;

    mapping(address => uint256) private _userExtraBToken;

    /**
     * @notice Constructor to initialize the Doubler contract
     * @param _initParent Address of the factory contract
     */
    constructor(address _initParent) {
        _factory = _initParent;
    }

    /**
     * @notice Initialize the Doubler contract with fast price feed and pool parameters
     * @param _initFastPriceFeed Address of the fast price feed contract
     * @param _initPool Pool parameters
     */
    function initialize(address _initFastPriceFeed, Pool memory _initPool) external {
        if (_factory != msg.sender) revert E_Ownable();
        _checkPoolParam(_initPool);
        _fastPriceFeed = _initFastPriceFeed;
        _pool = _initPool;
    }

    /// @notice Modifier to restrict access to the owner
    modifier onlyOwner() {
        if (IDoublerFactory(_factory).getFactoryOwner() != msg.sender) revert E_Ownable();
        _;
    }

    /// @notice Modifier to allow function calls only once per block
    modifier onlyOnce() {
        if (_pool.endPrice > 0 || _pool.startTime > block.timestamp || _pool.endTime < block.timestamp)
            revert E_Disable();
        if (_lastBlockCalled[tx.origin] >= block.number) revert E_BlockOnce();
        _;
        _lastBlockCalled[tx.origin] = block.number;
    }

    /**
     * @notice Get the current pool parameters
     * @return The pool parameters
     */
    function getPool() external view returns (Pool memory) {
        return _pool;
    }

     /**
     * @dev Get user's additional tokens exceeding 10x tokens
     * @param _to  User address
     * @return extraBToken additional tokens
     */    
    function getUserExtraBToken(address _to) external view returns(uint256) {
        return _userExtraBToken[_to];
    }

    /**
     * @dev Check the validity of the pool parameters
     * @param _pl The pool parameters to check
     */
    function _checkPoolParam(Pool memory _pl) internal pure {
        if (_pl.inputFee > 20) revert E_FeeLimit();
        if (_pl.withdrawFee > 20) revert E_FeeLimit();
        if (_pl.creator == address(0x0)) revert E_ZeroAddr();
    }

    /**
     * @notice Update the pool parameters
     * @param _updatePl New pool parameters
     */
    function updatePool(MPool calldata _updatePl) external onlyOwner {
        if (_pool.endPrice != 0) revert E_PoolEnd();
        if (_pool.endTime != _updatePl.endTime) {
            if (_updatePl.endTime <= _pool.endTime || block.timestamp < _pool.endTime - 7 days) revert E_EndTime();
            if (_getCurPrice(_pool.asset) >= _getAssetAvg(_pool.asset)) revert E_PriceLimit();
        }
        _pool.inputFee = _updatePl.inputFee;
        _pool.withdrawFee = _updatePl.withdrawFee;
        _pool.creator = _updatePl.creator;
        _pool.endTime = _updatePl.endTime;
        _checkPoolParam(_pool);
        emit UpdatePool(_pool.asset, _pool.creator, _pool.inputFee, _pool.withdrawFee, _pool.endTime);
    }

    /**
     * @notice Get the balance of a given asset in the contract
     * @param _asset Address of the asset
     * @return The balance of the asset
     */
    function _getAssetBalance(address _asset) private view returns (uint256) {
        return IERC20(_asset).balanceOf(address(this));
    }

    /**
     * @notice Get the service fee addresses
     * @param _creator Address of the pool creator
     * @return srvFeeAddr Array of service fee addresses
     */
    function _getSrvFeeAddr(address _creator) internal view returns (address[] memory srvFeeAddr) {
        srvFeeAddr = new address[](2);
        srvFeeAddr[0] = _creator;
        srvFeeAddr[1] = IDoublerFactory(_factory).getEcoAddr();
    }

    /**
     * @notice Get the average price of an asset in the pool
     * @param _asset Address of the asset
     * @return The average price of the asset
     */
    function _getAssetAvg(address _asset) private view returns (uint256) {
        uint256 assetTotal = _getAssetBalance(_asset);
        if (assetTotal == 0) {
            return 0;
        }
        return (IERC20(_pool.cToken).totalSupply() * _getUnitSize(_pool.asset)) / assetTotal;
    }

    /**
     * @notice Get the current price of an asset from the fast price feed
     * @param _asset Address of the asset
     * @return The current price of the asset
     */
    function _getCurPrice(address _asset) internal view returns (uint256) {
        return IFastPriceFeed(_fastPriceFeed).getPrice(_asset);
    }

    /**
     * @notice Get the unit size of an asset
     * @param _asset Address of the asset
     * @return The unit size of the asset
     */
    function _getUnitSize(address _asset) internal view returns (uint256) {
        return 10 ** IERC20Metadata(_asset).decimals();
    }

    /**
     * @notice Input ETH into the pool
     * @param _qAmount Amount of ETH to input
     * @param _to Address to credit
     */
    function inputEth(uint256 _qAmount, address _to) external payable nonReentrant onlyOnce {
        if (!_pool.isNative) revert E_Asset();
        if (msg.value != _qAmount) revert E_Balance();
        _input(_qAmount, _to, true);
    }

    /**
     * @notice Input an ERC20 token into the pool
     * @param _qAmount Amount of tokens to input
     * @param _to Address to credit
     */
    function input(uint256 _qAmount, address _to) external nonReentrant onlyOnce {
        if (IERC20(_pool.asset).balanceOf(msg.sender) < _qAmount) revert E_Balance();
        _input(_qAmount, _to, false);
    }

    /**
     * @dev Check the input quantity amount against limits
     * @param _qAmount Quantity amount to check
     * @param _curPrice Current price of the asset
     * @param _assetUnitSize Unit size of the asset
     * @param _lowerOfInputMaximum Lower limit of input maximum
     */
    function _checkInputQAmount(
        uint256 _qAmount,
        uint256 _curPrice,
        uint256 _assetUnitSize,
        uint256 _lowerOfInputMaximum
    ) internal view {
        uint256 inputValue = (_curPrice * _qAmount) / _assetUnitSize;
        uint256 inputMax = (_curPrice * _getAssetBalance(_pool.asset)) / _assetUnitSize / 100;
        inputMax = inputMax > _lowerOfInputMaximum ? inputMax : _lowerOfInputMaximum;
        if (inputValue < 1 ether || inputValue > inputMax) revert E_InputLimit();
    }

    /**
     * @dev Internal function to handle input logic
     * @param _qAmount Quantity amount
     * @param _to Address to credit
     * @param _isNative Boolean indicating if the asset is native
     */
    function _input(uint256 _qAmount, address _to, bool _isNative) internal {
        _rebaseCToken();
        uint256 curPrice = _getCurPrice(_pool.asset);
        uint256 avg = _getAssetAvg(_pool.asset); // get last avg
        uint256 assetUnitSize = _getUnitSize(_pool.asset);
        _checkInputQAmount(_qAmount, curPrice, assetUnitSize, _pool.lowerOfInputMaximum);
        uint256 bAmount;
        uint256 cAmount;
        uint256 bTotal = IERC20(_pool.bToken).totalSupply();
        uint256 cTotal = IERC20(_pool.cToken).totalSupply();
        uint256 extBAmount;
        if (cTotal == 0) {
            cAmount = (curPrice * _qAmount) / assetUnitSize;
            bAmount = cAmount / 10;
            avg = curPrice;
        } else {
            uint256 stmPrice = avg;
            if (curPrice <= avg) {
                stmPrice = curPrice;
                extBAmount = (curPrice * _qAmount - (curPrice * curPrice * _qAmount) / avg) / assetUnitSize;
                _userExtraBToken[_to] += extBAmount;
            }
            cAmount = (stmPrice * _qAmount) / assetUnitSize;
            bAmount = extBAmount + (cAmount * bTotal) / cTotal;
        }
        if (_isNative) {
            IWETH(_pool.asset).deposit{ value: msg.value }();
        } else {
            IERC20(_pool.asset).safeTransferFrom(msg.sender, address(this), _qAmount);
        }
        _mintBCToken(_to, bAmount, cAmount);
        emit Input(_pool.asset, _pool.id, _to, _qAmount, bAmount, cAmount, extBAmount);
        emit PoolStream(_pool.asset, _pool.id, _qAmount, bTotal, cTotal, curPrice, avg);
    }

    /**
     * @dev Mint B and C tokens
     * @param _to Address to credit
     * @param _bAmount Amount of B tokens to mint
     * @param _cAmount Amount of C tokens to mint
     */
    function _mintBCToken(address _to, uint256 _bAmount, uint256 _cAmount) internal {
        IRBToken(_pool.bToken).mintWithFee(_to, _bAmount, _getSrvFeeAddr(_pool.creator), _pool.inputFee);
        IRBToken(_pool.cToken).mint(_to, _cAmount);
    }

    /**
     * @dev Get the withdrawable asset amount
     * @param _bAmount Amount of B tokens
     * @param _cAmount Amount of C tokens
     * @param _bTotal Total supply of B tokens
     * @param _cTotal Total supply of C tokens
     * @param _curPrice Current price of the asset
     * @param _avgPrice Average price of the asset
     * @return assetAmount The withdrawable asset amount
     */
    function _getWithdrawAssetAmount(
        uint256 _bAmount,
        uint256 _cAmount,
        uint256 _bTotal,
        uint256 _cTotal,
        uint256 _curPrice,
        uint256 _avgPrice
    ) internal view returns (uint256 assetAmount) {
        uint256 assetUnitSize = _getUnitSize(_pool.asset);
        if (_curPrice >= _avgPrice) {
            uint256 profit = (((_getAssetBalance(_pool.asset) * _curPrice) / assetUnitSize - _cTotal) * _bAmount) /
                _bTotal;
            assetAmount = ((_cAmount + profit) * assetUnitSize) / _curPrice;
        } else {
            assetAmount = (_cAmount * assetUnitSize) / _avgPrice;
        }
    }

    /**
     * @dev Get the spendable B token amount
     * @param _cAmount Amount of C tokens
     * @param _bTotal Total supply of B tokens
     * @param _cTotal Total supply of C tokens
     * @return spendBAmount The spendable B token amount
     */
    function _getSpendBAmount(
        uint256 _cAmount,
        uint256 _bTotal,
        uint256 _cTotal
    ) internal view returns (uint256 spendBAmount) {
        spendBAmount = (_cAmount * _bTotal) / _cTotal;
        uint256 uBTokenBalance = IERC20(_pool.bToken).balanceOf(msg.sender);
        if (_pool.endPrice == 0 && _cTotal == _cAmount && spendBAmount > uBTokenBalance) {
            // The final withdrawal allows a precision error within 1/10 token.
            if (spendBAmount - uBTokenBalance <= _getUnitSize(_pool.bToken) / 10) spendBAmount = uBTokenBalance;
        }
        if (IERC20(_pool.cToken).balanceOf(msg.sender) < _cAmount) revert E_Balance();
        if (uBTokenBalance < spendBAmount) revert E_Balance();
    }

    /**
     * @dev Internal function to handle withdrawal logic
     * @param _curPrice Current price of the asset
     * @param _avgPrice Average price of the asset
     * @param _bAmount Amount of B tokens
     * @param _cAmount Amount of C tokens
     * @param _bTotal Total supply of B tokens
     * @param _cTotal Total supply of C tokens
     * @return assetAmount The withdrawable asset amount
     * @return srvFee The service fee
     */
    function _withdraw(
        uint256 _curPrice,
        uint256 _avgPrice,
        uint256 _bAmount,
        uint256 _cAmount,
        uint256 _bTotal,
        uint256 _cTotal
    ) internal returns (uint256 assetAmount, uint256 srvFee) {
        if (
            IRBToken(_pool.bToken).balanceOf(msg.sender) < _bAmount ||
            IRBToken(_pool.cToken).balanceOf(msg.sender) < _cAmount
        ) revert E_Balance();
        assetAmount = _getWithdrawAssetAmount(_bAmount, _cAmount, _bTotal, _cTotal, _curPrice, _avgPrice);
        uint256 qAmount = _getAssetBalance(_pool.asset);
        if (qAmount <= assetAmount) {
            assetAmount = _getAssetBalance(_pool.asset);
        }
        // burn c,b tokens
        if (_cAmount > 0) {
            IRBToken(_pool.cToken).burnFrom(msg.sender, _cAmount);
        }
        if (_bAmount > 0) {
            IRBToken(_pool.bToken).burnFrom(msg.sender, _bAmount);
        }
        // transfer asset
        srvFee = (assetAmount * _pool.withdrawFee) / _perMil;
        IERC20(_pool.asset).safeTransfer(_pool.creator, srvFee / 2);
        address ecoAddr = IDoublerFactory(_factory).getEcoAddr();
        IERC20(_pool.asset).safeTransfer(ecoAddr, srvFee - srvFee / 2);
        IERC20(_pool.asset).safeTransfer(msg.sender, assetAmount - srvFee);
        emit Withdraw(_pool.asset, _pool.id, msg.sender, _cAmount, _bAmount, assetAmount);
        emit PoolStream(_pool.asset, _pool.id, qAmount, _bTotal, _cTotal, _curPrice, _avgPrice);
    }

    /**
     * @notice Claim function for final withdrawal
     */
    function claim() external nonReentrant {
        if (_pool.endPrice == 0) revert E_PoolEnd();
        uint256 bAmount = IERC20(_pool.bToken).balanceOf(msg.sender);
        uint256 cAmount = IERC20(_pool.cToken).balanceOf(msg.sender);
        uint256 curPrice = _pool.endPrice;
        uint256 avgPrice = _getAssetAvg(_pool.asset);
        uint256 bTotal = IERC20(_pool.bToken).totalSupply();
        uint256 cTotal = IERC20(_pool.cToken).totalSupply();
        _withdraw(curPrice, avgPrice, bAmount, cAmount, bTotal, cTotal);
    }

    /**
     * @notice Withdraw function with additional slip check
     * @param _cAmount Amount of C tokens
     * @param _qAmount Expected quantity
     * @param _clientSlip Client slip percentage
     */
    function withdraw(uint256 _cAmount, uint256 _qAmount, uint16 _clientSlip) external nonReentrant onlyOnce {
        _rebaseCToken();
        uint256 curPrice = _getCurPrice(_pool.asset);
        uint256 avgPrice = _getAssetAvg(_pool.asset);
        uint256 bTotal = IERC20(_pool.bToken).totalSupply();
        uint256 cTotal = IERC20(_pool.cToken).totalSupply();
        uint256 bAmount = _getSpendBAmount(_cAmount, bTotal, cTotal);

        (uint256 assetAmount, uint256 srvFee) = _withdraw(curPrice, avgPrice, bAmount, _cAmount, bTotal, cTotal);
        _checkWithdrawLimit(_pool.asset, curPrice);
        _checkAmountSlip(_qAmount, assetAmount - srvFee, _clientSlip);
    }

    /**
     * @dev Check if the remaining balance after withdrawal is above the limit
     * @param _asset Address of the asset
     * @param _curPrice Current price of the asset
     */
    function _checkWithdrawLimit(address _asset, uint256 _curPrice) internal view {
        uint256 lastBalance = _getAssetBalance(_asset);
        // Check if the balance is not zero and if the remaining balance after withdrawal
        // multiplied by the current price divided by the unit size of the asset is less than 1 usd
        if (lastBalance != 0 && ((lastBalance * _curPrice) / _getUnitSize(_asset)) < 1 ether) {
            revert E_WithdrawLimit();
        }
    }

    /**
     * @dev Check if the amount slip is within the allowed limit
     * @param _eAmount Expected amount
     * @param _rAmount Received amount
     * @param _clientSlip Client slip percentage
     */
    function _checkAmountSlip(uint256 _eAmount, uint256 _rAmount, uint16 _clientSlip) internal pure {
        if (_clientSlip > _slip) revert E_SlipLimit();
        if ((_eAmount * (_perMil - _clientSlip)) / _perMil > _rAmount) {
            revert E_Expected();
        }
    }

    /**
     * @notice Rebase the C tokens
     */
    function rebaseCToken() external nonReentrant {
        if (block.timestamp > _pool.endTime || _pool.endPrice > 0) revert E_PoolEnd();
        _rebaseCToken();
    }

    /**
     * @dev Internal function to rebase the C tokens
     */
    function _rebaseCToken() internal {
        uint256 avg = _getAssetAvg(_pool.asset);
        uint256 curPrice = _getCurPrice(_pool.asset);
        if (avg == 0 || curPrice <= avg || block.timestamp - _pool.cLastRbTime <= 1 days) {
            // avg == 0 then cLastRbTime update
            if (avg == 0) _pool.cLastRbTime = block.timestamp;
            return;
        }
        // some ext reward
        IDoublerFactory(_factory).mintReward(_pool.asset, _pool.id, msg.sender, 1000 ether);
        _pool.cLastRbTime = block.timestamp;
        uint256 cTokenTotal = IERC20(_pool.cToken).totalSupply();
        // rebaseTotal =  cTokenTotal + cTokenTotal  * priceDiff / avg * 1%
        uint256 rbAmount = (cTokenTotal * (curPrice - avg)) / avg / 100;
        _pool.lastDayRate = (rbAmount * _perMil * _perMil) / cTokenTotal;
        cTokenTotal = cTokenTotal + rbAmount;
        IRBToken(_pool.cToken).rebase(cTokenTotal);
    }

    /**
     * @notice End the pool
     * @return True if the pool ended successfully
     */
    function endPool() external nonReentrant returns (bool) {
        if (block.timestamp <= _pool.endTime || _pool.endPrice > 0) revert E_PoolEnd();
        _pool.endTime = block.timestamp;
        _pool.endPrice = _getCurPrice(_pool.asset);
        IDoublerFactory(_factory).mintReward(_pool.asset, _pool.id, msg.sender, 10000 ether);
        emit EndPool(_pool.asset, _pool.id, block.timestamp, _pool.endPrice);
        return true;
    }
}
