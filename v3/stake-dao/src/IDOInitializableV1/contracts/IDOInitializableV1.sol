// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
pragma experimental ABIEncoderV2;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "@openzeppelin-4.5.0/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title IDOInitializableV1
 */
contract IDOInitializableV1 is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // Whether it is initialized
    bool private isInitialized;

    // all the addresses
    // [0] lpToken [1] offeringToken [2] adminAddress
    address[3] public addresses;

    // The timestamp when IDO starts
    uint256 public startTimestamp;

    // The timestamp when IDO ends
    uint256 public endTimestamp;

    // Max buffer seconds (for sanity checks)
    uint256 public MAX_BUFFER_SECONDS;

    // Struct that contains pool's information
    struct PoolInformation {
        uint256 raisingAmountPool; // amount of tokens raised for the pool (in LP tokens)
        uint256 offeringAmountPool; // amount of tokens offered for the pool (in offeringTokens)
        uint256 capPerUserInLP; // cap of tokens per user (if 0, it is ignored)
        bool hasTax; // tax on the overflow (if any, it works with _calculateTaxOverflow)
        uint256 flatTaxRate; // new rate for flat tax
        uint256 totalAmountPool; // total amount pool deposited (in LP tokens)
        uint256 sumTaxesOverflow; // total taxes collected (starts at 0, increases with each harvest if overflow)
    }

    PoolInformation public _poolInformation;

    // Struct that contains each user information for both pools
    struct UserInfo {
        uint256 amountPool; // How many tokens the user has provided for pool
        bool claimedPool; // Whether the user has claimed (default: false) for pool
    }

    // It maps the address to UserInfo
    mapping(address => UserInfo) private _userInfo;

    // A map record all the bot addresses
    mapping(address => bool) public blacklist;

    // A flag decide whether can harvest or not
    bool public canHarvestPool;

    // Admin withdraw events
    event AdminWithdraw(uint256 amountLP, uint256 amountOfferingToken);

    // Admin recovers token
    event AdminTokenRecovery(address tokenAddress, uint256 amountTokens);

    // Deposit event
    event Deposit(address indexed user, uint256 amount);

    // Harvest event
    event Harvest(address indexed user, uint256 offeringAmount, uint256 excessAmount);

    // Event for new start & end timestamps
    event NewStartAndEndTimestamps(uint256 startTimestamp, uint256 endTimestamp);

    // Event when parameters are set for one of the pools
    event PoolParametersSet(uint256 offeringAmountPool, uint256 raisingAmountPool);

    // Event when canHarvestPool update
    event UpdatedCanHarvestPool(bool canHarvest);

    // Event when add an address into black list
    event AddedIntoBlackList(address indexed user);

    error EndTimeTooFar();
    error StartTimeMustInferiorToEndTime();
    error AlreadyInitialized();
    error AddressesLengthNotCorrect();
    error StartAndEndTimestampsLengthNotCorrect();
    error TokensNotDepositedProperly();
    error NewAmountAboveUserCap();
    error CanNotBeLPToken();
    error CanNotBeOfferingToken();
    error PoolNotSet();
    error PoolCanNotHarvest();
    error TooEarly();
    error TooLate();
    error AmountMustBeZero();
    error AmountMustExceedZero();
    error DidNotParticipate();
    error OnTheBlackList();
    error AlreadyHarvested();
    error NotEnoughLPTokens();
    error NotEnoughOfferingTokens();
    error IDOHasStarted();
    error FlatTaxRateMustBeLessThan1e12();
    error FlatTaxRateMustBe0WhenHasTaxIsFalse();

    /**
     * @notice Constructor
     */
    constructor() {
        canHarvestPool = true;
    }

    /**
     * @notice It initializes the contract
     * @dev It can only be called once.
     * @dev no caller check as this method is called immediately after contract is created
     * @param _addresses: [0] lpToken [1] offeringToken [2] adminAddress
     * @param _startAndEndTimestamps: [0] startTimestamp [1] endTimestamp
     * @param _maxBufferSeconds: maximum buffer of blocks from the current block number
     */
    function initialize(
        address[] calldata _addresses,
        uint256[] calldata _startAndEndTimestamps,
        uint256 _maxBufferSeconds
    ) public {
        if (isInitialized) {
            revert AlreadyInitialized();
        }

        if (_addresses.length != 3) {
            revert AddressesLengthNotCorrect();
        }

        if (_startAndEndTimestamps.length != 2) {
            revert StartAndEndTimestampsLengthNotCorrect();
        }

        // Make this contract initialized
        isInitialized = true;

        // [0] lpToken
        // [1] offeringToken
        // [2] adminAddress
        for (uint8 i = 0; i < _addresses.length; i++) {
            addresses[i] = _addresses[i];
        }

        startTimestamp = _startAndEndTimestamps[0];
        endTimestamp = _startAndEndTimestamps[1];

        MAX_BUFFER_SECONDS = _maxBufferSeconds;

        // Transfer ownership to admin
        transferOwnership(_addresses[2]);
    }

    /**
     * @notice It allows users to deposit LP tokens to pool
     * @dev if the LP address is Zero, means user should deposit Native token instead of ERC20
     * @param _amount: the number of LP token used (18 decimals) - if address[0] == address(0), IDO is raising in native token, thus this parameter will not be used
     */
    function depositPool(uint256 _amount) external payable nonReentrant {
        // Checks that pool was set
        if (_poolInformation.offeringAmountPool == 0 || _poolInformation.raisingAmountPool == 0) {
            revert PoolNotSet();
        }

        // Checks whether the timestamp is not too early
        if (block.timestamp < startTimestamp) {
            revert TooEarly();
        }

        // Checks whether the timestamp is not too late
        if (block.timestamp > endTimestamp) {
            revert TooLate();
        }

        // Verify tokens were deposited properly
        if (IERC20(addresses[1]).balanceOf(address(this)) < _poolInformation.offeringAmountPool) {
            revert TokensNotDepositedProperly();
        }

        uint256 transferAmount = 0;

        // Checks that the amount deposited is not inferior to 0
        if (addresses[0] == address(0)) {
            if (msg.value == 0) {
                revert AmountMustExceedZero();
            }

            transferAmount = msg.value;
        } else {
            if (msg.value != 0) {
                revert AmountMustBeZero();
            }

            if (_amount == 0) {
                revert AmountMustExceedZero();
            }

            // Transfers funds to this contract
            IERC20(addresses[0]).safeTransferFrom(msg.sender, address(this), _amount);

            transferAmount = _amount;
        }

        // Update the user status
        _userInfo[msg.sender].amountPool = _userInfo[msg.sender].amountPool + transferAmount;

        // Check if the pool has a cap per user
        if (_poolInformation.capPerUserInLP > 0) {
            // Checks whether the cap has been reached
            if (_userInfo[msg.sender].amountPool > _poolInformation.capPerUserInLP) {
                revert NewAmountAboveUserCap();
            }
        }

        // Updates the totalAmount for pool
        _poolInformation.totalAmountPool = _poolInformation.totalAmountPool + transferAmount;

        emit Deposit(msg.sender, transferAmount);
    }

    /**
     * @notice It allows users to harvest from pool
     */
    function harvestPool() external nonReentrant {
        // Checks whether pool id is valid
        if (block.timestamp <= endTimestamp) {
            revert TooEarly();
        }

        // Checks whether pool can be harvest
        if (!canHarvestPool) {
            revert PoolCanNotHarvest();
        }

        // Checks whether msg.sender is on the blacklist
        if (blacklist[msg.sender]) {
            revert OnTheBlackList();
        }

        (uint256 amountPool, bool claimedPool) = viewUserInfo(msg.sender);

        // Checks whether the user has participated
        if (amountPool == 0) {
            revert DidNotParticipate();
        }

        // Checks whether the user has already harvested
        if (claimedPool) {
            revert AlreadyHarvested();
        }

        // Updates the harvest status
        _userInfo[msg.sender].claimedPool = true;

        (
            uint256 offeringTokenAmount,
            uint256 refundingTokenAmount,
            uint256 userTaxOverflow
        ) = viewUserOfferingAndRefundingAmounts(msg.sender);

        // Increment the sumTaxesOverflow
        if (userTaxOverflow > 0) {
            _poolInformation.sumTaxesOverflow = _poolInformation.sumTaxesOverflow + userTaxOverflow;
        }

        // Transfer these tokens back to the user if quantity > 0
        if (offeringTokenAmount > 0) {
            // Transfer the tokens at TGE
            IERC20(addresses[1]).safeTransfer(msg.sender, offeringTokenAmount);
        }

        emit Harvest(msg.sender, offeringTokenAmount, refundingTokenAmount);

        if (refundingTokenAmount > 0) {
            if (addresses[0] == address(0)) {
                _safeTransferETH(msg.sender, refundingTokenAmount);
            } else {
                IERC20(addresses[0]).safeTransfer(msg.sender, refundingTokenAmount);
            }
        }
    }

    /**
     * @notice It allows the admin to withdraw funds
     * @param _lpAmount: the number of LP token to withdraw (18 decimals)
     * @param _offerAmount: the number of offering amount to withdraw
     * @dev This function is only callable by admin.
     */
    function finalWithdraw(uint256 _lpAmount, uint256 _offerAmount) external onlyOwner {
        if (addresses[0] == address(0)) {
            if (_lpAmount > address(this).balance) {
                revert NotEnoughLPTokens();
            }
        } else {
            if (_lpAmount > IERC20(addresses[0]).balanceOf(address(this))) {
                revert NotEnoughLPTokens();
            }
        }

        if (_offerAmount > IERC20(addresses[1]).balanceOf(address(this))) {
            revert NotEnoughOfferingTokens();
        }

        if (_lpAmount > 0) {
            if (addresses[0] == address(0)) {
                _safeTransferETH(msg.sender, _lpAmount);
            } else {
                IERC20(addresses[0]).safeTransfer(msg.sender, _lpAmount);
            }
        }

        if (_offerAmount > 0) {
            IERC20(addresses[1]).safeTransfer(msg.sender, _offerAmount);
        }

        emit AdminWithdraw(_lpAmount, _offerAmount);
    }

    /**
     * @notice It allows the admin to recover wrong tokens sent to the contract
     * @param _tokenAddress: the address of the token to withdraw (18 decimals)
     * @param _tokenAmount: the number of token amount to withdraw
     * @dev This function is only callable by admin.
     */
    function recoverWrongTokens(address _tokenAddress, uint256 _tokenAmount) external onlyOwner {
        if (_tokenAddress == addresses[0]) {
            revert CanNotBeLPToken();
        }

        if (_tokenAddress == addresses[1]) {
            revert CanNotBeOfferingToken();
        }

        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);

        emit AdminTokenRecovery(_tokenAddress, _tokenAmount);
    }

    /**
     * @notice It sets parameters for pool
     * @param _offeringAmountPool: offering amount (in tokens)
     * @param _raisingAmountPool: raising amount (in LP tokens)
     * @param _limitPerUserInLP: limit per user (in LP tokens)
     * @param _hasTax: if the pool has a tax
     * @param _flatTaxRate: flat tax rate
     */

    function setPool(
        uint256 _offeringAmountPool,
        uint256 _raisingAmountPool,
        uint256 _limitPerUserInLP,
        bool _hasTax,
        uint256 _flatTaxRate
    ) external onlyOwner {
        if (block.timestamp >= startTimestamp) {
            revert IDOHasStarted();
        }

        if (_flatTaxRate >= 1e12) {
            revert FlatTaxRateMustBeLessThan1e12();
        }

        if (!_hasTax) {
            if (_flatTaxRate != 0) {
                revert FlatTaxRateMustBe0WhenHasTaxIsFalse();
            }
        }

        _poolInformation.offeringAmountPool = _offeringAmountPool;
        _poolInformation.raisingAmountPool = _raisingAmountPool;
        _poolInformation.capPerUserInLP = _limitPerUserInLP;
        _poolInformation.hasTax = _hasTax;
        _poolInformation.flatTaxRate = _flatTaxRate;

        emit PoolParametersSet(_offeringAmountPool, _raisingAmountPool);
    }

    /**
     * @notice this is set true only if there are non eligibile wallet who took part in the IDO. In this scenario, PCS will block canHarvestPool=false first, then add address to blacklist before setting canHarvestPool=true again.
     *         add address to blacklist before opening up harvestPool again.
     */
    function setCanHarvestPool(bool _canHarvestPool) external onlyOwner {
        canHarvestPool = _canHarvestPool;
        emit UpdatedCanHarvestPool(_canHarvestPool);
    }

    /**
     * @notice this is add a batch of address list into blacklist, which can NOT harvest after the end.
     */
    function addAddressToBlacklist(address[] calldata addresses) external onlyOwner {
        uint256 len = addresses.length;
        for (uint256 i = 0; i < len; i++) {
            address user = addresses[i];
            if (!blacklist[user]) {
                blacklist[user] = true;
            }
            emit AddedIntoBlackList(user);
        }
    }

    /**
     * @notice It allows the admin to update start and end blocks
     * @param _startAndEndTimestamps: [0] startTimestamp [1] endTimestamp
     * @dev This function is only callable by admin.
     */
    function updateStartAndEndTimestamps(uint256[] calldata _startAndEndTimestamps) external onlyOwner {
        if (_startAndEndTimestamps.length != 2) {
            revert StartAndEndTimestampsLengthNotCorrect();
        }
        if (endTimestamp >= (block.timestamp + MAX_BUFFER_SECONDS)) revert EndTimeTooFar();
        if (startTimestamp >= endTimestamp) revert StartTimeMustInferiorToEndTime();
        if (block.timestamp >= startTimestamp) revert IDOHasStarted();

        startTimestamp = _startAndEndTimestamps[0];
        endTimestamp = _startAndEndTimestamps[1];

        emit NewStartAndEndTimestamps(_startAndEndTimestamps[0], _startAndEndTimestamps[1]);
    }

    /**
     * @notice It returns the tax overflow rate calculated for pool
     * @dev 100,000,000,000 means 0.1 (10%) / 1 means 0.0000000000001 (0.0000001%) / 1,000,000,000,000 means 1 (100%)
     * @return It returns the tax percentage
     */
    function viewPoolTaxRateOverflow() external view returns (uint256) {
        if (!_poolInformation.hasTax) {
            return 0;
        } else {
            if (_poolInformation.flatTaxRate > 0) {
                return _poolInformation.flatTaxRate;
            } else {
                return _calculateTaxOverflow(_poolInformation.totalAmountPool, _poolInformation.raisingAmountPool);
            }
        }
    }

    /**
     * @notice External view function to see user allocations for pool
     * @param _user: user address
     * @return
     */
    function viewUserAllocation(address _user) public view returns (uint256) {
        if (_poolInformation.totalAmountPool > 0) {
            return (_userInfo[_user].amountPool * 1e12) / _poolInformation.totalAmountPool;
        }
        return 0;
    }

    /**
     * @notice External view function to see user information
     * @param _user: user address
     */
    function viewUserInfo(address _user) public view returns (uint256, bool) {
        return (_userInfo[_user].amountPool, _userInfo[_user].claimedPool);
    }

    /**
     * @notice External view function to see user offering and refunding amounts for pool
     * @param _user: user address
     */
    function viewUserOfferingAndRefundingAmounts(address _user)
        public
        view
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        uint256 userOfferingAmount;
        uint256 userRefundingAmount;
        uint256 taxAmount;

        if (_poolInformation.raisingAmountPool > 0) {
            if (_poolInformation.totalAmountPool > _poolInformation.raisingAmountPool) {
                // Calculate allocation for the user
                uint256 allocation = viewUserAllocation(_user);

                // Calculate the offering amount for the user based on the offeringAmount for the pool
                userOfferingAmount = (_poolInformation.offeringAmountPool * allocation) / 1e12;

                // Calculate the payAmount
                uint256 payAmount = (_poolInformation.raisingAmountPool * allocation) / 1e12;

                // Calculate the pre-tax refunding amount
                userRefundingAmount = _userInfo[_user].amountPool - payAmount;

                // Retrieve the tax rate
                if (_poolInformation.hasTax) {
                    uint256 tax = _poolInformation.flatTaxRate;

                    if (tax == 0) {
                        tax = _calculateTaxOverflow(
                            _poolInformation.totalAmountPool,
                            _poolInformation.raisingAmountPool
                        );
                    }
                    // Calculate the final taxAmount
                    taxAmount = (userRefundingAmount * tax) / 1e12;

                    // Adjust the refunding amount
                    userRefundingAmount = userRefundingAmount - taxAmount;
                }
            } else {
                // _userInfo[_user] / (raisingAmount / offeringAmount)
                userOfferingAmount =
                    (_userInfo[_user].amountPool * _poolInformation.offeringAmountPool) /
                    _poolInformation.raisingAmountPool;
            }
        }

        return (userOfferingAmount, userRefundingAmount, taxAmount);
    }

    /**
     * @notice It calculates the tax overflow given the raisingAmountPool and the totalAmountPool.
     * @dev 100,000,000,000 means 0.1 (10%) / 1 means 0.0000000000001 (0.0000001%) / 1,000,000,000,000 means 1 (100%)
     * @return It returns the tax percentage
     */
    function _calculateTaxOverflow(uint256 _totalAmountPool, uint256 _raisingAmountPool)
        internal
        pure
        returns (uint256)
    {
        uint256 ratioOverflow = _totalAmountPool / _raisingAmountPool;
        if (ratioOverflow >= 1500) {
            return 250000000; // 0.0125%
        } else if (ratioOverflow >= 1000) {
            return 500000000; // 0.05%
        } else if (ratioOverflow >= 500) {
            return 1000000000; // 0.1%
        } else if (ratioOverflow >= 250) {
            return 1250000000; // 0.125%
        } else if (ratioOverflow >= 100) {
            return 1500000000; // 0.15%
        } else if (ratioOverflow >= 50) {
            return 2500000000; // 0.25%
        } else {
            return 5000000000; // 0.5%
        }
    }

    function _safeTransferETH(address _to, uint256 _amount) internal {
        (bool success, ) = _to.call{value: _amount}(new bytes(0));
        require(success, "native token transfer failed");
    }
}
