// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import "./WithdrawQueueStorage.sol";
import "../Errors/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract WithdrawQueue is
    Initializable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    WithdrawQueueStorageV3
{
    using SafeERC20 for IERC20;

    event WithdrawBufferTargetUpdated(uint256 oldBufferTarget, uint256 newBufferTarget);

    event CoolDownPeriodUpdated(uint256 oldCoolDownPeriod, uint256 newCoolDownPeriod);

    event EthBufferFilled(uint256 amount);

    event ERC20BufferFilled(address asset, uint256 amount);

    event WithdrawRequestCreated(
        uint256 indexed withdrawRequestID,
        address user,
        address claimToken,
        uint256 amountToRedeem,
        uint256 ezETHAmountLocked,
        uint256 withdrawRequestIndex,
        bool queued,
        uint256 queueFilled
    );

    event WithdrawRequestClaimed(WithdrawRequest withdrawRequest);

    event QueueFilled(uint256 amount, address asset);
    event WithdrawQueueEnabled(address asset);
    event WithdrawQueueDisabled(address asset);

    /// @dev Allows only Withdraw Queue Admin to configure the contract
    modifier onlyWithdrawQueueAdmin() {
        if (!roleManager.isWithdrawQueueAdmin(msg.sender)) revert NotWithdrawQueueAdmin();
        _;
    }

    /// @dev Allows only a whitelisted address to set pause state
    modifier onlyDepositWithdrawPauserAdmin() {
        if (!roleManager.isDepositWithdrawPauser(msg.sender)) revert NotDepositWithdrawPauser();
        _;
    }

    /// @dev Allows only RestakeManager to call the functions
    modifier onlyRestakeManager() {
        if (msg.sender != address(restakeManager)) revert NotRestakeManager();
        _;
    }

    modifier onlyDepositQueue() {
        if (msg.sender != address(restakeManager.depositQueue())) revert NotDepositQueue();
        _;
    }

    /// @dev Prevents implementation contract from being initialized.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice  Initializes the contract with initial vars
     */
    function initialize(
        IRoleManager _roleManager,
        IRestakeManager _restakeManager,
        IEzEthToken _ezETH,
        IRenzoOracle _renzoOracle,
        uint256 _coolDownPeriod,
        TokenWithdrawBuffer[] calldata _withdrawalBufferTarget
    ) external initializer {
        if (
            address(_roleManager) == address(0) ||
            address(_ezETH) == address(0) ||
            address(_renzoOracle) == address(0) ||
            address(_restakeManager) == address(0) ||
            _withdrawalBufferTarget.length == 0 ||
            _coolDownPeriod == 0
        ) revert InvalidZeroInput();

        __Pausable_init();

        roleManager = _roleManager;
        restakeManager = _restakeManager;
        ezETH = _ezETH;
        renzoOracle = _renzoOracle;
        coolDownPeriod = _coolDownPeriod;
        for (uint256 i = 0; i < _withdrawalBufferTarget.length; ) {
            if (
                _withdrawalBufferTarget[i].asset == address(0) ||
                _withdrawalBufferTarget[i].bufferAmount == 0
            ) revert InvalidZeroInput();
            withdrawalBufferTarget[_withdrawalBufferTarget[i].asset] = _withdrawalBufferTarget[i]
                .bufferAmount;
            unchecked {
                ++i;
            }
        }

        // Deploy WithdrawQueue with paused state
        _pause();
    }

    /**
     * @notice  Updates the WithdrawBufferTarget for max withdraw available
     * @dev     Permissioned call (onlyWithdrawQueueAdmin)
     * @param   _newBufferTarget  new max buffer target available to withdraw
     */
    function updateWithdrawBufferTarget(
        TokenWithdrawBuffer[] calldata _newBufferTarget
    ) external onlyWithdrawQueueAdmin {
        if (_newBufferTarget.length == 0) revert InvalidZeroInput();
        for (uint256 i = 0; i < _newBufferTarget.length; ) {
            if (_newBufferTarget[i].asset == address(0) || _newBufferTarget[i].bufferAmount == 0)
                revert InvalidZeroInput();
            emit WithdrawBufferTargetUpdated(
                withdrawalBufferTarget[_newBufferTarget[i].asset],
                _newBufferTarget[i].bufferAmount
            );
            withdrawalBufferTarget[_newBufferTarget[i].asset] = _newBufferTarget[i].bufferAmount;
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Updates the coolDownPeriod for withdrawal requests
     * @dev    It is a permissioned call (onlyWithdrawQueueAdmin)
     * @param   _newCoolDownPeriod  new coolDownPeriod in seconds
     */
    function updateCoolDownPeriod(uint256 _newCoolDownPeriod) external onlyWithdrawQueueAdmin {
        if (_newCoolDownPeriod == 0) revert InvalidZeroInput();
        emit CoolDownPeriodUpdated(coolDownPeriod, _newCoolDownPeriod);
        coolDownPeriod = _newCoolDownPeriod;
    }

    /**
     * @notice  Enables Withdraw Queue for specified ERC20 asset
     * @dev     It is a permissioned call (onlyWithdrawQueueAdmin)
     * @param   _asset  collateral asset address to enable withdraw queue for
     */
    function enableERC20WithdrawQueue(address _asset) external onlyWithdrawQueueAdmin {
        if (_asset == address(0)) revert InvalidZeroInput();
        if (_asset == IS_NATIVE) revert IsNativeAddressNotAllowed();
        // check if _asset is collateral Token. call will revert if not collateral asset
        restakeManager.getCollateralTokenIndex(IERC20(_asset));

        erc20WithdrawQueueEnabled[_asset] = true;

        emit WithdrawQueueEnabled(_asset);
    }

    /**
     * @notice  disables Withdraw Queue for specified ERC20 asset
     * @dev     It is a permissioned call (onlyWithdrawQueueAdmin)
     * @param   _asset  collateral asset address to disable withdraw queue for
     */
    function disableERC20WithdrawQueue(address _asset) external onlyWithdrawQueueAdmin {
        if (_asset == address(0)) revert InvalidZeroInput();
        // check if withdraw queue enabled for asset
        if (!erc20WithdrawQueueEnabled[_asset]) revert WithdrawQueueNotEnabled();

        erc20WithdrawQueueEnabled[_asset] = false;

        emit WithdrawQueueDisabled(_asset);
    }

    /**
     * @notice  Pause the contract
     * @dev     Permissioned call (onlyDepositWithdrawPauserAdmin)
     */
    function pause() external onlyDepositWithdrawPauserAdmin {
        _pause();
    }

    /**
     * @notice  Unpause the contract
     * @dev     Permissioned call (onlyDepositWithdrawPauserAdmin)
     */
    function unpause() external onlyDepositWithdrawPauserAdmin {
        _unpause();
    }

    /**
     * @notice  returns available to withdraw for particular asset
     * @param   _asset  address of asset. for ETH _asset = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
     * @return  uint256  amount available to withdraw from buffer
     */
    function getAvailableToWithdraw(address _asset) public view returns (uint256) {
        if (_asset != IS_NATIVE) {
            return IERC20(_asset).balanceOf(address(this)) - claimReserve[_asset];
        } else {
            return address(this).balance - claimReserve[_asset];
        }
    }

    /**
     * @notice  returns empty withdraw buffer for particular asset
     * @dev     returns 0 is buffer is full
     * @param   _asset  address of asset. for ETH _asset = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
     * @return  uint256  amount of buffer to be filled
     */
    function getWithdrawDeficit(address _asset) public view returns (uint256) {
        uint256 availableToWithdraw = getAvailableToWithdraw(_asset);
        uint256 bufferDeficit = withdrawalBufferTarget[_asset] > availableToWithdraw
            ? withdrawalBufferTarget[_asset] - availableToWithdraw
            : 0;
        // Only allow queueDeficit for ETH or queue enabled erc20 asset
        uint256 queueDeficit = getQueueDeficit(_asset);

        // return total deficit
        return bufferDeficit + queueDeficit;
    }

    /**
     * @notice  fill Eth WithdrawBuffer from RestakeManager deposits
     * @dev     permissioned call (onlyDepositQueue)
     */
    function fillEthWithdrawBuffer() external payable nonReentrant onlyDepositQueue {
        uint256 queueFilled = _checkAndFillWithdrawQueue(IS_NATIVE, msg.value);
        emit EthBufferFilled(msg.value - queueFilled);
    }

    /**
     * @notice  Fill ERC20 token withdraw buffer from RestakeManager deposits
     * @dev     permissioned call (onlyDepositQueue)
     * @param   _asset  address of ERC20 asset to fill up the buffer
     * @param   _amount  amount of ERC20 asset to fill up the buffer
     */
    function fillERC20WithdrawBuffer(
        address _asset,
        uint256 _amount
    ) external nonReentrant onlyDepositQueue {
        if (_asset == address(0) || _amount == 0) revert InvalidZeroInput();
        // check if provided assetOut is supported
        if (withdrawalBufferTarget[_asset] == 0) revert UnsupportedWithdrawAsset();

        uint256 queueFilled = 0;
        if (erc20WithdrawQueueEnabled[_asset]) {
            queueFilled = _checkAndFillWithdrawQueue(_asset, _amount);
        }
        IERC20(_asset).safeTransferFrom(msg.sender, address(this), _amount);

        emit ERC20BufferFilled(_asset, _amount - queueFilled);
    }

    /**
     * @notice  Creates a withdraw request for user
     * @param   _amount  amount of ezETH to withdraw
     * @param   _assetOut  output token to receive on claim
     */
    function withdraw(uint256 _amount, address _assetOut) external nonReentrant whenNotPaused {
        // check for 0 values
        if (_amount == 0 || _assetOut == address(0)) revert InvalidZeroInput();

        // check if provided assetOut is supported
        if (withdrawalBufferTarget[_assetOut] == 0) revert UnsupportedWithdrawAsset();

        // transfer ezETH tokens to this address
        IERC20(address(ezETH)).safeTransferFrom(msg.sender, address(this), _amount);

        (
            uint256[][] memory _operatorDelegatorTokenTVLs,
            uint256 amountToRedeem
        ) = _calculateAmountToRedeem(_amount, _assetOut);

        // increment the withdrawRequestNonce
        withdrawRequestNonce++;

        WithdrawRequest memory withdrawRequest = WithdrawRequest(
            _assetOut,
            withdrawRequestNonce,
            amountToRedeem,
            _amount,
            block.timestamp
        );

        uint256 availableToWithdraw = getAvailableToWithdraw(_assetOut);
        bool queued = false;
        // If amountToRedeem is greater than available to withdraw
        if (amountToRedeem > availableToWithdraw) {
            // check if enough collateral available in protocol
            _checkAvailableCollateralValue(amountToRedeem, _assetOut, _operatorDelegatorTokenTVLs);

            if (_assetOut == IS_NATIVE) {
                // fill the queue with availableToWithdraw
                ethWithdrawQueue.queuedWithdrawFilled += availableToWithdraw;
                // update the queue to fill
                ethWithdrawQueue.queuedWithdrawToFill += amountToRedeem;
            } else if (erc20WithdrawQueueEnabled[_assetOut]) {
                // fill the queue with availableToWithdraw
                erc20WithdrawQueue[_assetOut].queuedWithdrawFilled += availableToWithdraw;
                // update the queue to fill
                erc20WithdrawQueue[_assetOut].queuedWithdrawToFill += amountToRedeem;
            } else {
                // Revert if assetOut is not ETH or queue enabled asset
                revert NotEnoughWithdrawBuffer();
            }

            // increase the claim reserve to partially fill withdrawRequest with max available in buffer
            claimReserve[_assetOut] += availableToWithdraw;

            // calculate withdrawRequest hash
            bytes32 withdrawHash = keccak256(abi.encode(withdrawRequest, msg.sender));

            // mark withdraw as queued and track fillAt with current queue top
            withdrawQueued[withdrawHash].queued = true;
            withdrawQueued[withdrawHash].fillAt = _assetOut == IS_NATIVE
                ? ethWithdrawQueue.queuedWithdrawToFill
                : erc20WithdrawQueue[_assetOut].queuedWithdrawToFill;

            // mark queued to true
            queued = true;
        } else {
            // add redeem amount to claimReserve of claim asset
            claimReserve[_assetOut] += amountToRedeem;
        }

        // add withdraw request for msg.sender
        withdrawRequests[msg.sender].push(withdrawRequest);

        emit WithdrawRequestCreated(
            withdrawRequestNonce,
            msg.sender,
            _assetOut,
            amountToRedeem,
            _amount,
            withdrawRequests[msg.sender].length - 1,
            queued,
            availableToWithdraw
        );
    }

    /**
     * @notice  Returns the number of outstanding withdrawal requests of the specified user
     * @param   user  address of the user
     * @return  uint256  number of outstanding withdrawal requests
     */
    function getOutstandingWithdrawRequests(address user) public view returns (uint256) {
        return withdrawRequests[user].length;
    }

    /**
     * @notice  Claim user withdraw request
     * @dev     revert on claim before cooldown period
     * @param   withdrawRequestIndex  Index of the Withdraw Request user wants to claim
     * @param   user address of the user to claim withdrawRequest for
     */
    function claim(uint256 withdrawRequestIndex, address user) external nonReentrant whenNotPaused {
        // check if provided withdrawRequest Index is valid
        if (withdrawRequestIndex >= withdrawRequests[user].length) revert InvalidWithdrawIndex();

        WithdrawRequest memory _withdrawRequest = withdrawRequests[user][withdrawRequestIndex];
        if (block.timestamp - _withdrawRequest.createdAt < coolDownPeriod) revert EarlyClaim();

        // calculate the amount to redeem
        (, uint256 claimAmountToRedeem) = _calculateAmountToRedeem(
            _withdrawRequest.ezETHLocked,
            _withdrawRequest.collateralToken
        );

        // check if collateral asset is ETH and queued
        if (_withdrawRequest.collateralToken == IS_NATIVE) {
            bytes32 _withdrawHash = keccak256(abi.encode(_withdrawRequest, user));
            // Revert if withdrawal is queued and not filled completely
            if (
                withdrawQueued[_withdrawHash].queued &&
                withdrawQueued[_withdrawHash].fillAt > ethWithdrawQueue.queuedWithdrawFilled
            ) revert QueuedWithdrawalNotFilled();
        }

        // reduce initial amountToRedeem from claim reserve
        claimReserve[_withdrawRequest.collateralToken] -= _withdrawRequest.amountToRedeem;

        // update withdraw request amount to redeem if lower at claim time.
        if (claimAmountToRedeem < _withdrawRequest.amountToRedeem) {
            _withdrawRequest.amountToRedeem = claimAmountToRedeem;
        }

        // delete the withdraw request
        withdrawRequests[user][withdrawRequestIndex] = withdrawRequests[user][
            withdrawRequests[user].length - 1
        ];
        withdrawRequests[user].pop();

        // burn ezETH locked for withdraw request
        ezETH.burn(address(this), _withdrawRequest.ezETHLocked);

        // send selected redeem asset to user
        if (_withdrawRequest.collateralToken == IS_NATIVE) {
            (bool success, ) = payable(user).call{ value: _withdrawRequest.amountToRedeem }("");
            if (!success) revert TransferFailed();
        } else {
            IERC20(_withdrawRequest.collateralToken).transfer(
                user,
                _withdrawRequest.amountToRedeem
            );
        }
        // emit the event
        emit WithdrawRequestClaimed(_withdrawRequest);
    }

    function _calculateAmountToRedeem(
        uint256 _amount,
        address _assetOut
    )
        internal
        view
        returns (uint256[][] memory operatorDelegatorTokenTVLs, uint256 _amountToRedeem)
    {
        uint256 totalTVL = 0;
        // calculate totalTVL
        (operatorDelegatorTokenTVLs, , totalTVL) = restakeManager.calculateTVLs();

        // Calculate amount to Redeem in ETH
        _amountToRedeem = renzoOracle.calculateRedeemAmount(_amount, ezETH.totalSupply(), totalTVL);

        // update amount in claim asset, if claim asset is not ETH
        if (_assetOut != IS_NATIVE) {
            // Get ERC20 asset equivalent amount
            _amountToRedeem = renzoOracle.lookupTokenAmountFromValue(
                IERC20(_assetOut),
                _amountToRedeem
            );
        }
    }

    function _checkAndFillWithdrawQueue(address _asset, uint256 amount) internal returns (uint256) {
        uint256 queueDeficit = getQueueDeficit(_asset);
        uint256 queueFilled = 0;
        if (queueDeficit > 0) {
            queueFilled = queueDeficit > amount ? amount : queueDeficit;

            // Increase claimReserve
            claimReserve[_asset] += queueFilled;

            // Increase the queueFilled
            if (_asset == IS_NATIVE) {
                ethWithdrawQueue.queuedWithdrawFilled += queueFilled;
            } else if (erc20WithdrawQueueEnabled[_asset]) {
                erc20WithdrawQueue[_asset].queuedWithdrawFilled += queueFilled;
            }

            emit QueueFilled(queueFilled, _asset);
        }
        return queueFilled;
    }

    function availableCollateralAmount(
        address _asset
    ) external view returns (uint256 totalCollateralAmount) {
        (uint256[][] memory _operatorDelegatorTokenTVLs, , ) = restakeManager.calculateTVLs();
        uint256 collateralIndex;
        uint256 queueDeficitAmount;
        if (_asset != IS_NATIVE) {
            // if asset is ERC20 get the collateral index and token amount
            totalCollateralAmount = getAvailableToWithdraw(_asset);
            collateralIndex = restakeManager.getCollateralTokenIndex(IERC20(_asset));
            queueDeficitAmount = _getQueueDeficitEnabledERC20(_asset);
        } else {
            // collateral index for ETH is last index in calculate TVL
            collateralIndex = _operatorDelegatorTokenTVLs[0].length - 1;
            totalCollateralAmount =
                address(restakeManager.depositQueue()).balance +
                getAvailableToWithdraw(_asset);
            queueDeficitAmount = _getQueueDeficitNative();
        }

        // calculate total Collateral Value in protocol
        for (uint256 i = 0; i < _operatorDelegatorTokenTVLs.length; ) {
            uint256 assetTVL = _asset == IS_NATIVE
                ? _operatorDelegatorTokenTVLs[i][collateralIndex]
                : renzoOracle.lookupTokenAmountFromValue(
                    IERC20(_asset),
                    _operatorDelegatorTokenTVLs[i][collateralIndex]
                );
            totalCollateralAmount += assetTVL;
            unchecked {
                ++i;
            }
        }
        // deduct queue size from total amount
        totalCollateralAmount -= queueDeficitAmount;
    }

    function _checkAvailableCollateralValue(
        uint256 _amount,
        address _asset,
        uint256[][] memory _operatorDelegatorTokenTVLs
    ) internal view {
        uint256 collateralIndex;
        uint256 totalCollateralValue;
        uint256 queueDeficitValue;
        if (_asset != IS_NATIVE) {
            // if asset is ERC20 get the collateral index and token value
            _amount = renzoOracle.lookupTokenValue(IERC20(_asset), _amount);
            totalCollateralValue = renzoOracle.lookupTokenValue(
                IERC20(_asset),
                getAvailableToWithdraw(_asset)
            );
            collateralIndex = restakeManager.getCollateralTokenIndex(IERC20(_asset));
            queueDeficitValue = renzoOracle.lookupTokenValue(
                IERC20(_asset),
                _getQueueDeficitEnabledERC20(_asset)
            );
        } else {
            // collateral index for ETH is last index in calculate TVL
            collateralIndex = _operatorDelegatorTokenTVLs[0].length - 1;
            totalCollateralValue =
                address(restakeManager.depositQueue()).balance +
                getAvailableToWithdraw(_asset);
            queueDeficitValue = _getQueueDeficitNative();
        }

        // calculate total Collateral Value in protocol
        for (uint256 i = 0; i < _operatorDelegatorTokenTVLs.length; ) {
            totalCollateralValue += _operatorDelegatorTokenTVLs[i][collateralIndex];
            unchecked {
                ++i;
            }
        }

        // deduct queue deficit from totalValue
        if (queueDeficitValue > 0) {
            totalCollateralValue -= queueDeficitValue;
        }
        if (totalCollateralValue < _amount) revert NotEnoughCollateralValue();
    }

    function _getQueueDeficitNative() internal view returns (uint256 queueDeficit) {
        queueDeficit = (ethWithdrawQueue.queuedWithdrawToFill >
            ethWithdrawQueue.queuedWithdrawFilled)
            ? (ethWithdrawQueue.queuedWithdrawToFill - ethWithdrawQueue.queuedWithdrawFilled)
            : 0;
    }

    function _getQueueDeficitEnabledERC20(
        address _asset
    ) internal view returns (uint256 queueDeficit) {
        if (erc20WithdrawQueueEnabled[_asset]) {
            queueDeficit = (erc20WithdrawQueue[_asset].queuedWithdrawToFill >
                erc20WithdrawQueue[_asset].queuedWithdrawFilled)
                ? (erc20WithdrawQueue[_asset].queuedWithdrawToFill -
                    erc20WithdrawQueue[_asset].queuedWithdrawFilled)
                : 0;
        }
    }

    function getQueueDeficit(address _asset) public view returns (uint256) {
        if (_asset == IS_NATIVE) {
            return _getQueueDeficitNative();
        } else {
            return _getQueueDeficitEnabledERC20(_asset);
        }
    }
}
