// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {IERC20} from "erc20/interfaces/IERC20.sol";
import "@solmate/src/auth/Owned.sol";
import "./interfaces/IMigrationLockedRevenueDistributionToken.sol";
import "./interfaces/IGETToken.sol";
import "./interfaces/IOPNToken.sol";
import "./interfaces/IOPNMintManager.sol";
import "./interfaces/IOPNMigration.sol";

contract OPNMigration is IOPNMigration, Owned {
    // GET -> OPN ratio (1:1000) - 1 GET = 1000 OPN
    uint256 public constant GET_TO_OPN_RATIO = 1e3;

    // amount of time the migration is available for after the start of the migration
    uint256 public constant MIGRATION_AVAILABLE_UNTIL = 600 days;

    // chain id
    uint256 public immutable chainId;

    // OPN token address
    IOPNToken public openToken;

    // OPN mint manager address
    IOPNMintManager public opnMintManager;

    // xOPN token address
    IMigrationLockedRevenueDistributionToken public xOpenToken;

    // GET token address
    IGETToken public immutable liquidGETToken;

    // xGET token address
    IMigrationLockedRevenueDistributionToken public immutable stakedGETToken;

    address public immutable migrationDestinationAddress;

    // Storage variables for migration statistics

    // total amount of liquid GET migrated
    uint256 public totalLiquidGETMigrated;

    // total amount of  XGET migrated to XOPN, note xget isn't migrated, the xget is redeemed and then this GET is migrated (and restaked to XOPN)
    uint256 public totalXGETRedeemed;

    // total amount of GET that was migrated to OPN that was migrated with XGET as input
    uint256 public totalGETMigratedByXGETMigration;

    // total amount of OPN that was staked due to a fee charged on liquid GET migration
    uint256 public totalOPNStakedByGETMigration;

    // total amount of OPN that was minted by all migrations
    uint256 public totalOPNMintedByAllMigration;

    // if the migration is enabled
    bool public isMigrationActive = false;

    // Internal contract config and state

    uint256 private locked = 1; // Used in reentrancy check.

    // stake rate configurations

    // duration of the migration fee, after which the stake rate is 0
    uint256 public durationOfStakeMigrationPeriod;

    // epoch time when the migration starts
    uint256 public startOfMigration;

    // epoch time when the migration is not possible anymore
    uint256 public endOfMigration;

    // initial stake rate at the start of the migration
    uint256 public stakeRateInitial; // so 5 * 1e17 = 50% (SCALED: 1e18)

    // Constructor

    constructor(
        address _initialOwner,
        address _liquidGETAddress,
        address _stakedGETAddress,
        uint256 _startOfMigration,
        uint256 _startStakeRate,
        uint256 _durationOfStakeMigrationPeriod,
        address _bridgeMigrationAddress,
        uint256 _chainId
    ) Owned(_initialOwner) {
        liquidGETToken = IGETToken(_liquidGETAddress);
        stakedGETToken = IMigrationLockedRevenueDistributionToken(
            _stakedGETAddress
        );

        require(
            _startOfMigration > block.timestamp,
            "OPNMigration: Start of migration must be in the future"
        );

        startOfMigration = _startOfMigration;
        endOfMigration = _startOfMigration + MIGRATION_AVAILABLE_UNTIL;
        stakeRateInitial = _startStakeRate;

        require(
            MIGRATION_AVAILABLE_UNTIL > _durationOfStakeMigrationPeriod,
            "OPNMigration: Duration of stake migration period must be less than the total migration period"
        );

        durationOfStakeMigrationPeriod = _durationOfStakeMigrationPeriod;

        migrationDestinationAddress = _bridgeMigrationAddress;
        chainId = _chainId;
    }

    // Modifier functions

    modifier nonReentrant() {
        require(locked == 1, "OPNMigration: Reentrant call");
        locked = 2;
        _;
        locked = 1;
    }

    // Operational functions

    /// @inheritdoc IOPNMigration
    function migrateDualTokens(
        uint256 _amountGET,
        uint256 _amountXGET
    )
        external
        override
        nonReentrant
        returns (
            uint256 amountOPNToUserForGETMigration_,
            uint256 amountXOPNToUserForXGETMigration_,
            uint256 amountOPNStakedForGETMigration_,
            uint256 amountXOPNToUserForGETMigration_,
            uint256 amountGETRedeemedByXGET_
        )
    {
        // Ensure migration is currently active before proceeding.
        require(_isMigrationActive(), "OPNMigration: Migration not active");

        // if both amounts are 0 then revert because there is no point
        require(
            _amountGET > 0 || _amountXGET > 0,
            "OPNMigration: Both amounts are 0"
        );

        // Handle GET token migration.
        if (_amountGET > 0) {
            (
                amountOPNToUserForGETMigration_,
                amountOPNStakedForGETMigration_,
                amountXOPNToUserForGETMigration_
            ) = _migrateLiquidGETTokens(_amountGET);
        }

        // Handle XGET token migration.
        if (_amountXGET > 0) {
            (
                amountXOPNToUserForXGETMigration_,
                amountGETRedeemedByXGET_
            ) = _migrateStakedXGETTokens(_amountXGET);
        }

        // Emit an event to log the completion of the migration process for tracking and transparency.

        emit OPNMigrationComplete(
            msg.sender,
            _amountGET,
            _amountXGET,
            amountOPNToUserForGETMigration_,
            amountXOPNToUserForGETMigration_,
            amountXOPNToUserForXGETMigration_,
            amountOPNStakedForGETMigration_,
            amountGETRedeemedByXGET_,
            amountGETRedeemedByXGET_ * GET_TO_OPN_RATIO
        );

        return (
            amountOPNToUserForGETMigration_,
            amountXOPNToUserForXGETMigration_,
            amountOPNStakedForGETMigration_,
            amountXOPNToUserForGETMigration_,
            amountGETRedeemedByXGET_
        );
    }

    // Internal functions

    function _burn(uint256 _amount) internal {
        if (chainId == 1) {
            liquidGETToken.burn(_amount);
        } else {
            // transfer tokens to the migration destination address - note on polygon we do not burn tokens as the tokens on Polygon are issued by the bridge
            require(
                liquidGETToken.transfer(migrationDestinationAddress, _amount),
                "OPNMigration: GET transfer to migration destination failed"
            );
        }
    }

    function _migrateLiquidGETTokens(
        uint256 _amountGET
    )
        internal
        returns (
            uint256 amountOPNToUserForGETMigration_,
            uint256 amountOPNStakedForGETMigration_,
            uint256 amountXOPNToUserForGETMigration_
        )
    {
        _migratorCheckGET(_amountGET); // Check for GET token balance and approval, then transfer tokens to thi contract and stake them (on ethereum)

        totalLiquidGETMigrated += _amountGET; // Update the total migrated GET counter.

        // Calculate the amount of OPN to mint based on the GET to OPN ratio.
        uint256 amountOPNToMintGET_ = _amountGET * GET_TO_OPN_RATIO;

        totalOPNMintedByAllMigration += amountOPNToMintGET_; // Update the total OPN minted counter.

        uint256 stakeRate_ = _returnCurrentStakeRate(block.timestamp);

        if (stakeRate_ == 0) {
            amountOPNToUserForGETMigration_ = amountOPNToMintGET_;
            amountXOPNToUserForGETMigration_ = 0;
            amountOPNStakedForGETMigration_ = 0;
        } else {
            // Calculate the amount of OPN to stake based on the current stake rate.
            amountOPNStakedForGETMigration_ =
                (amountOPNToMintGET_ * stakeRate_) /
                1e18;

            amountOPNToUserForGETMigration_ =
                amountOPNToMintGET_ -
                amountOPNStakedForGETMigration_; // Calculate the net OPN to allocate to the user.

            totalOPNStakedByGETMigration += amountOPNStakedForGETMigration_; // Update the total OPN staked counter

            // Mint and then stake the calculated OPN amount for transparency and tracking on platforms.
            opnMintManager.issueTokensMigration(
                address(this),
                amountOPNStakedForGETMigration_
            );

            // Approve the xOPN contract to spend the OPN tokens to be staked.
            openToken.approve(
                address(xOpenToken),
                amountOPNStakedForGETMigration_
            );

            // Stake the OPN tokens in the xOPN contract, allocating XOPN tokens to the user.
            amountXOPNToUserForGETMigration_ = xOpenToken.deposit(
                amountOPNStakedForGETMigration_,
                msg.sender
            );
        }

        // Mint OPN tokens for the user. Separate transaction for cleaner look and tracking.
        opnMintManager.issueTokensMigration(
            msg.sender,
            amountOPNToUserForGETMigration_
        );

        return (
            amountOPNToUserForGETMigration_,
            amountOPNStakedForGETMigration_,
            amountXOPNToUserForGETMigration_
        );
    }

    /**
     * @dev Migrates staked XGET tokens to OPN tokens and allocates XOPN tokens to the user.
     * This function handles the entire migration process for staked XGET tokens. It checks the user's XGET token balance and approval,
     * redeems XGET for GET tokens (which are then burned), mints OPN tokens based on the redeemed GET tokens, and finally,
     * stakes a portion of OPN tokens to allocate XOPN tokens to the user.
     * @param _amountXGET The amount of XGET tokens to be migrated.
     * @return amountXOPNToUserForXGETMigration_ The amount of XOPN tokens allocated to the user as a result of the migration.
     * @return amountGETRedeemedByXGET_ The amount of GET tokens redeemed from the XGET tokens.
     */
    function _migrateStakedXGETTokens(
        uint256 _amountXGET
    )
        internal
        returns (
            uint256 amountXOPNToUserForXGETMigration_,
            uint256 amountGETRedeemedByXGET_
        )
    {
        // Check for XGET token balance and approval, then transfer, redeem for GET (the GET will be burned on Ethereum).
        amountGETRedeemedByXGET_ = _migratorCheckXGET(_amountXGET);

        // Update the total XGET redeemed counter.
        totalXGETRedeemed += _amountXGET;

        // Update the total GET migrated via XGET counter.
        totalGETMigratedByXGETMigration += amountGETRedeemedByXGET_;

        // Calculate the amount of OPN to mint for the redeemed GET.
        uint256 amountOPNToMintXGET_ = amountGETRedeemedByXGET_ *
            GET_TO_OPN_RATIO;

        // Update the total OPN minted counter.
        totalOPNMintedByAllMigration += amountOPNToMintXGET_;

        // Mint OPN tokens to this contract for staking.
        opnMintManager.issueTokensMigration(
            address(this),
            amountOPNToMintXGET_
        );

        // Approve the xOPN contract to spend the OPN tokens to be staked.
        openToken.approve(address(xOpenToken), amountOPNToMintXGET_);

        // Stake the OPN tokens in the xOPN contract, allocating XOPN tokens to the user.
        amountXOPNToUserForXGETMigration_ = xOpenToken.deposit(
            amountOPNToMintXGET_,
            msg.sender
        );

        return (amountXOPNToUserForXGETMigration_, amountGETRedeemedByXGET_);
    }

    /**
     * @dev Checks the user's balance and approval for GET tokens, transfers them to the contract, and then burns the GET tokens.
     * This function is a crucial part of the GET to OPN migration process. It ensures that the user has a sufficient balance of GET tokens and has granted the contract
     * permission to use them. After verifying these conditions, it transfers the specified amount of GET tokens from the user to the contract. Finally, it burns these tokens,
     * effectively removing them from circulation as part of the migration process.
     * @param _amountGET The amount of GET tokens the user intends to migrate.
     */
    function _migratorCheckGET(uint256 _amountGET) internal {
        // Ensure the caller has a sufficient balance of GET tokens for the migration.
        require(
            liquidGETToken.balanceOf(msg.sender) >= _amountGET,
            "OPNMigration: Insufficient GET balance"
        );

        // Ensure the contract is authorized to spend the specified amount of GET tokens on behalf of the caller.
        require(
            liquidGETToken.allowance(msg.sender, address(this)) >= _amountGET,
            "OPNMigration: GET spend not approved"
        );

        // Transfer the specified amount of GET tokens from the caller to this contract.
        // This step is necessary before the tokens can be burned.
        require(
            liquidGETToken.transferFrom(msg.sender, address(this), _amountGET),
            "OPNMigration: GET transfer failed"
        );

        // Burn the transferred GET tokens as part of the migration process.
        // This action permanently removes the tokens from circulation, marking their migration to OPN tokens.
        _burn(_amountGET);
    }

    /**
     * @dev Checks the user's balance and approval for XGET tokens, transfers them to the contract, redeems them for GET tokens, and then burns the GET tokens.
     * This function is a critical part of the XGET to OPN migration process. It ensures that the user has enough XGET tokens and has granted the contract
     * permission to use them. It then redeems these XGET tokens for GET tokens. The redeemed GET tokens are immediately burned as part of the migration process.
     * @param _amountXGET The amount of XGET tokens the user wants to migrate.
     * @return amountGETRedeemedByXGET_ The amount of GET tokens redeemed from the XGET tokens. This amount is calculated based on the redemption rate defined in the XGET token contract.
     */
    function _migratorCheckXGET(
        uint256 _amountXGET
    ) internal returns (uint256 amountGETRedeemedByXGET_) {
        // Ensure the caller has enough XGET tokens for the migration.
        require(
            stakedGETToken.balanceOf(msg.sender) >= _amountXGET,
            "OPNMigration: Insufficient XGET balance"
        );

        // Ensure the contract is allowed to spend the specified amount of XGET tokens on behalf of the caller.
        require(
            stakedGETToken.allowance(msg.sender, address(this)) >= _amountXGET,
            "OPNMigration: XGET spend not approved"
        );

        // Transfer the specified amount of XGET tokens from the caller to this contract.
        // This step is necessary to redeem the XGET tokens for GET tokens.
        require(
            stakedGETToken.transferFrom(msg.sender, address(this), _amountXGET),
            "OPNMigration: XGET transfer failed"
        );

        // Redeem the transferred XGET tokens for GET tokens.
        // The XGET token contract should define the redemption rate and mechanics.
        amountGETRedeemedByXGET_ = stakedGETToken.redeem(
            _amountXGET,
            address(this),
            address(this)
        );

        // Burn the redeemed GET tokens as part of the migration process (on Ethereum)
        // This step permanently removes the GET tokens from circulation, completing their migration to OPN tokens.

        _burn(amountGETRedeemedByXGET_);

        return amountGETRedeemedByXGET_;
    }

    // Calculates the current stake rate based on the elapsed time since the start of the migration.
    // The stake rate starts at stakeRateInitial and linearly decreases to 0 over the duration durationOfStakeMigrationPeriod.
    // After durationOfStakeMigrationPeriod, the stake rate remains at 0.
    function _returnCurrentStakeRate(
        uint256 _timestamp
    ) internal view returns (uint256 stakeRate_) {
        unchecked {
            // If the current timestamp is before the migration start time, return the initial stake rate.
            // This case might not be possible in practice since the migration wouldn't have started yet,
            // but it's handled here for completeness and to avoid underflow in subtraction below.
            if (_timestamp < startOfMigration) {
                // revert("OPNMigration: migration not started yet");
                return 1e18; // return 100% but inreality should probably revert
            }

            // If the current timestamp is after the end of the stake migration duration, return 0 as the stake rate.
            if (
                _timestamp > startOfMigration + durationOfStakeMigrationPeriod
            ) {
                return 0;
            }

            // Calculate the elapsed time since the start of the migration.
            uint256 elapsedTime_ = _timestamp - startOfMigration;

            // Calculate the remaining duration of the migration.
            uint256 remainingDuration_ = durationOfStakeMigrationPeriod -
                elapsedTime_;

            // Calculate the current stake rate based on the linear decrease over time.
            // This calculation uses the proportion of the remaining duration to the total duration,
            // multiplied by the initial stake rate, to find the current rate.
            stakeRate_ = uint256(
                (stakeRateInitial * remainingDuration_) /
                    durationOfStakeMigrationPeriod
            );

            return stakeRate_;
        }
    }

    /**
     * @dev Calculates the expected returns for migrating liquid GET tokens.
     * This function provides a preview of the migration results for liquid GET tokens without performing the actual migration.
     * It calculates the total OPN tokens to be minted from the GET tokens, the portion of OPN tokens to be staked, and the corresponding amount of XOPN tokens to be allocated to the user.
     * @param _amountGET The amount of GET tokens to be migrated.
     * @return amountOPNToUserForGETMigration_ The net amount of OPN tokens allocated to the user after staking a portion.
     * @return amountOPNStakedForGETMigration_ The amount of OPN tokens to be staked.
     * @return amountXOPNToUserForGETMigration_ The amount of XOPN tokens allocated to the user based on the staked OPN tokens.
     */
    function _checkLiquidMigrationReturn(
        uint256 _amountGET
    )
        internal
        view
        returns (
            uint256 amountOPNToUserForGETMigration_,
            uint256 amountOPNStakedForGETMigration_,
            uint256 amountXOPNToUserForGETMigration_
        )
    {
        // Calculate the total amount of OPN tokens to mint based on the GET to OPN ratio.
        uint256 amountOPNToMintGET_ = _amountGET * GET_TO_OPN_RATIO;

        // Calculate the amount of OPN to stake based on the current stake rate.
        amountOPNStakedForGETMigration_ =
            (amountOPNToMintGET_ * _returnCurrentStakeRate(block.timestamp)) /
            1e18;

        // Calculate the net OPN to allocate to the user after subtracting the staked amount.
        amountOPNToUserForGETMigration_ =
            amountOPNToMintGET_ -
            amountOPNStakedForGETMigration_;

        // Calculate the amount of XOPN tokens to be allocated to the user by depositing the staked OPN tokens in the xOPN contract.
        amountXOPNToUserForGETMigration_ = xOpenToken.previewDeposit(
            amountOPNStakedForGETMigration_
        );

        return (
            amountOPNToUserForGETMigration_,
            amountOPNStakedForGETMigration_,
            amountXOPNToUserForGETMigration_
        );
    }

    /**
     * @dev Calculates the expected returns when migrating staked XGET tokens.
     * This function provides a preview of the migration results for staked XGET tokens without performing the actual migration.
     * It calculates the amount of GET tokens that would be redeemed from the XGET tokens and the corresponding amount of XOPN tokens that would be allocated to the user.
     * @param _amountXGET The amount of XGET tokens to be migrated.
     * @return amountXOPNToUserForXGETMigration_ The amount of XOPN tokens that would be allocated to the user as a result of the migration.
     * @return amountGETRedeemedByXGET_ The amount of GET tokens redeemed from the XGET tokens.
     */
    function _checkStakedXGETMigrateReturns(
        uint256 _amountXGET
    )
        internal
        view
        returns (
            uint256 amountXOPNToUserForXGETMigration_,
            uint256 amountGETRedeemedByXGET_
        )
    {
        // Redeem XGET tokens for GET tokens based on the predefined rate in the stakedGETToken contract.
        amountGETRedeemedByXGET_ = stakedGETToken.previewRedeem(
            _amountXGET,
            address(this)
        );

        // Calculate the amount of OPN tokens to mint based on the redeemed GET tokens and the GET to OPN ratio.
        uint256 amountOPNToMintXGET_ = amountGETRedeemedByXGET_ *
            GET_TO_OPN_RATIO;

        // Calculate the amount of XOPN tokens to be allocated to the user by depositing the minted OPN tokens in the xOPN contract.
        amountXOPNToUserForXGETMigration_ = xOpenToken.previewDeposit(
            amountOPNToMintXGET_
        );

        return (amountXOPNToUserForXGETMigration_, amountGETRedeemedByXGET_);
    }

    function _isMigrationActive() internal view returns (bool) {
        // check the timestamp if it is greater than the start of migration, return bool
        return block.timestamp >= startOfMigration && isMigrationActive;
    }

    // Configuration functions

    /// @inheritdoc IOPNMigration
    function setAddressConfig(
        address _openToken,
        address _xOpenToken,
        address _opnMintManager
    ) external override onlyOwner {
        openToken = IOPNToken(_openToken);
        opnMintManager = IOPNMintManager(_opnMintManager);
        xOpenToken = IMigrationLockedRevenueDistributionToken(_xOpenToken);
        emit OPNTokenSet(_openToken);
        emit XOpenTokenSet(_xOpenToken);
        emit MintManagerSet(_opnMintManager);
    }

    /// @inheritdoc IOPNMigration
    function setStartOfMigration(
        uint256 _startOfMigration
    ) external override onlyOwner {
        startOfMigration = _startOfMigration;
        emit StartOfMigrationSet(_startOfMigration);
    }

    /// @inheritdoc IOPNMigration
    function setEndOfMigration(
        uint256 _endOfMigration
    ) external override onlyOwner {
        endOfMigration = _endOfMigration;
        emit EndOfMigrationSet(_endOfMigration);
    }

    /// @inheritdoc IOPNMigration
    function setStakeRateInitial(
        uint256 _stakeRateInitial
    ) external override onlyOwner {
        stakeRateInitial = _stakeRateInitial;
        emit StakeRateInitialSet(_stakeRateInitial);
    }

    /// @inheritdoc IOPNMigration
    function setDurationOfStakeMigrationPeriod(
        uint256 _durationOfStakeMigrationPeriod
    ) external override onlyOwner {
        durationOfStakeMigrationPeriod = _durationOfStakeMigrationPeriod;
        emit DurationOfStakeMigrationPeriodSet(_durationOfStakeMigrationPeriod);
    }

    /// @inheritdoc IOPNMigration
    function setMigrationActive(bool _setting) external override onlyOwner {
        if (_setting) {
            // check if the contract is fully configured
            // check that xOpenToken is not address(0)
            require(
                address(xOpenToken) != address(0),
                "OPNMigration: xOpenToken not set"
            );

            // check that openToken is not address(0)
            require(
                address(openToken) != address(0),
                "OPNMigration: openToken not set"
            );

            // check that opnMintManager is not address(0)
            require(
                address(opnMintManager) != address(0),
                "OPNMigration: opnMintManager not set"
            );
        }

        isMigrationActive = _setting;

        emit MigrationStatusSet(_setting);
    }

    // View functions

    /// @inheritdoc IOPNMigration
    function totalOPNStakedByTheMigration()
        external
        view
        override
        returns (uint256)
    {
        return totalOPNStakedByGETMigration;
    }

    /// @inheritdoc IOPNMigration
    function totalOPNMinted() external view override returns (uint256) {
        return totalOPNMintedByAllMigration;
    }

    /// @inheritdoc IOPNMigration
    function returnCurrentStakeRate() external view override returns (uint256) {
        return _returnCurrentStakeRate(block.timestamp);
    }

    /// @inheritdoc IOPNMigration
    function returnStakeRateAtTime(
        uint256 _timestamp
    ) external view override returns (uint256) {
        return _returnCurrentStakeRate(_timestamp);
    }

    /// @inheritdoc IOPNMigration
    function totalOPNSupply() external view override returns (uint256) {
        return openToken.totalSupply();
    }

    /// @inheritdoc IOPNMigration
    function totalXOPNSupply() external view override returns (uint256) {
        return xOpenToken.totalSupply();
    }

    /// @inheritdoc IOPNMigration
    function totalGETMigratedInTotal()
        external
        view
        override
        returns (uint256)
    {
        return totalLiquidGETMigrated + totalGETMigratedByXGETMigration;
    }

    /// @inheritdoc IOPNMigration
    function returnTotalAmountGETFromXGETRedemptionMigrated()
        external
        view
        override
        returns (uint256)
    {
        return totalGETMigratedByXGETMigration;
    }

    /// @inheritdoc IOPNMigration
    function totalXGETRedeemedInTotal()
        external
        view
        override
        returns (uint256)
    {
        return totalXGETRedeemed;
    }

    /// @inheritdoc IOPNMigration
    function returnMigrateDualTokenOutput(
        uint256 _amountGET,
        uint256 _amountXGET
    )
        external
        view
        override
        returns (
            uint256 amountOPNToUserForGETMigration_,
            uint256 amountXOPNToUserForXGETMigration_,
            uint256 amountOPNStakedForGETMigration_,
            uint256 amountXOPNToUserForGETMigration_,
            uint256 amountGETRedeemedByXGET_
        )
    {
        if (_amountGET == 0 && _amountXGET == 0) {
            return (0, 0, 0, 0, 0);
        }

        // Check returns of GET token migration.
        if (_amountGET > 0) {
            (
                amountOPNToUserForGETMigration_,
                amountOPNStakedForGETMigration_,
                amountXOPNToUserForGETMigration_
            ) = _checkLiquidMigrationReturn(_amountGET);
        }

        // Handle XGET token migration.
        if (_amountXGET > 0) {
            (
                amountXOPNToUserForXGETMigration_,
                amountGETRedeemedByXGET_
            ) = _checkStakedXGETMigrateReturns(_amountXGET);
        }

        return (
            amountOPNToUserForGETMigration_,
            amountXOPNToUserForXGETMigration_,
            amountOPNStakedForGETMigration_,
            amountXOPNToUserForGETMigration_,
            amountGETRedeemedByXGET_
        );
    }

    /// @inheritdoc IOPNMigration
    function previewDeposit(
        uint256 _assets
    ) external view override returns (uint256) {
        return xOpenToken.previewDeposit(_assets);
    }

    /// @inheritdoc IOPNMigration
    function previewRedeem(
        uint256 _shares
    ) external view override returns (uint256) {
        return xOpenToken.previewRedeem(_shares, address(this));
    }

    /// @inheritdoc IOPNMigration
    function depositRatioOfOPNtoXOPN()
        external
        view
        override
        returns (uint256)
    {
        return xOpenToken.previewDeposit(1e18);
    }
}
