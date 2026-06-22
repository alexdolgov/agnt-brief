// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {SafeERC20Upgradeable as SafeERC20, IERC20Upgradeable as IERC20} from "@openzeppelin-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import {IERC1155Receipt} from "@interfaces/IERC1155Receipt.sol";
import {IRewardsDistributor} from "@interfaces/IRewardsDistributor.sol";
import {IProxyVault, IMaturedVault} from "@interfaces/IProxyVault.sol";
// import {IAssetRegistry} from "@interfaces/IAssetRegistry.sol";
import "@interfaces/IIntermediary.sol";

import "forge-std/console2.sol";

/**
*   @title HourglassCustodian
*   @notice This contract is the custodian of all assets deposited into the Hourglass protocol.
*   @author Hourglass Finance
*/

contract HourglassCustodian is UUPSUpgradeable, AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    /// @notice Upgrader role
    bytes32 public constant UPGRADER = keccak256("UPGRADER");
    /// @notice Pauser role
    bytes32 public constant PAUSER = keccak256("PAUSER");
    /// @notice Registry manager role
    bytes32 public constant REGISTRY_MANAGER = keccak256("REGISTRY_MANAGER");
    /// @notice Unused role storage preservation
    bytes32[3] internal unusedRoleStorage;

    /// @notice Each asset stored in an array of AssetInfo structs, contains all relevant data for an asset
    struct AssetInfo {
        address vaultImplementation;
        bytes depositVaultInitData;
        address intermediary;
        address stakingStrategy;
        address erc1155Receipt;
        bytes erc1155ReceiptInitData;
        address maturedHoldingVault;
        address depositToken;
        uint256 maxDuration;
        bool isActive;
    }
    
    /// @notice The asset strategies stored in an array of AssetStrategy structs
    AssetInfo[] public assetIds;
    
    /// @notice Tracks assetId -> isUnlocked
    mapping(uint256 => bool) public locksReleased;

    /// @notice Stores the vault address for a given maturity by assetId -> maturityTimestamp -> vault
    mapping(uint256 => mapping(uint256 => address)) public assetIdToMaturityToVault;
    /// @notice Tracks whether a vault has matured & had assets withdrawn to store in mature holding vault
    mapping(address => bool) public vaultMatured;
    /// @notice Tracks assetId -> vault -> tokenId
    mapping(uint256 => mapping(address => uint256)) public assetIdToVaultToTokenId;

    /// @notice Pauses the deposits & withdrawals
    bool public isPaused;

    /// @notice Time at which the mature vault upgrade can be executed
    mapping(uint256 => uint256) public authorizeMatureUpgradeAt;
    /// @notice The address of the new mature vault implementation
    mapping(uint256 => address) public authorizedNewMatureVaultAddress;


    /// @notice This ensures that a withdrawal must first be requested, time must pass, then they can withdraw.
    /// @notice This gives monitoring systems a chance to catch malicious activity & pause withdrawals
    struct Withdrawal {
        uint256 allowedTimestamp;
        uint256 amount;
        bool isUsed;
    }

    /// @notice Allows a user to only request 1 withdrawal at a time
    mapping(address => Withdrawal) public userToWithdrawTS;

    /// @notice The address of the fee manager
    address public feeManager;
    /// @notice The address of the rewards distributor
    address public rewardDistributor;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(
        address _pauser,
        address _registryManager,
        address _upgrader
    ) public initializer {
        __UUPSUpgradeable_init();
        __AccessControl_init();
        __ReentrancyGuard_init();

        // setup the initial roles & role admins
        _grantRole(DEFAULT_ADMIN_ROLE, _upgrader);
        _grantRole(PAUSER, _pauser);
        _grantRole(REGISTRY_MANAGER, _registryManager);
        _grantRole(UPGRADER, _upgrader);
    }
 
    /// @notice Override to allow upgrades by the upgrader role
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER) {
    }


    ////////// Asset Registration //////////

    /// @notice Adds a new asset to the registry
    /// param _vaultImplementation The address of the vault implementation
    /// param _depositVaultInitData The encoded data for the deposit vault
    /// param _stakingStrategy The address of the staking strategy
    /// param _erc1155Receipt The address of the ERC1155 receipt
    /// @param _1155InitData The encoded data for the ERC1155 receipt
    /// @param _erc1155ReceiptInitData The encoded data for the ERC1155 receipt
    /// param _maturedHoldingVault The address of the matured holding vault
    /// param _depositToken The address of the deposit token
    function registerNewAsset(
        bytes calldata _depositVaultInitData,
        bytes calldata _1155InitData,
        bytes calldata _erc1155ReceiptInitData,
        address[5] calldata vault_stk_1155_mat_int,
        address  _depositToken,
        uint256[2] calldata maxDur_rwdEpoch 
    ) external onlyRole(REGISTRY_MANAGER) {
        // perform checks on values
        if (
            vault_stk_1155_mat_int[0] == address(0)
            || vault_stk_1155_mat_int[1] == address(0)
            || vault_stk_1155_mat_int[2] == address(0)
            || vault_stk_1155_mat_int[3] == address(0)
            || vault_stk_1155_mat_int[4] == address(0)
        ) {
            revert CannotBeZeroAddress();
        }

        // register the new asset
        assetIds.push(AssetInfo({
            vaultImplementation: vault_stk_1155_mat_int[0],
            depositVaultInitData: _depositVaultInitData,
            intermediary: vault_stk_1155_mat_int[4],
            stakingStrategy: vault_stk_1155_mat_int[1],
            erc1155Receipt: vault_stk_1155_mat_int[2],
            erc1155ReceiptInitData: _erc1155ReceiptInitData,
            maturedHoldingVault: vault_stk_1155_mat_int[3],
            depositToken: _depositToken,
            maxDuration: maxDur_rwdEpoch[0], // maxDuration,
            isActive: true
        }));

        uint256 newAssetId = assetIds.length - 1;
        
        IERC1155Receipt(vault_stk_1155_mat_int[2]).initializeReceiptContract(
            newAssetId, 
            address(this), 
            vault_stk_1155_mat_int[1],  // staking strategy
            vault_stk_1155_mat_int[3],  // mature vault
            maxDur_rwdEpoch[1],         // rewardEpochDuration
            _1155InitData
        );

        IRewardsDistributor(rewardDistributor).register1155(vault_stk_1155_mat_int[2]);

        emit NewAssetRegistered(newAssetId, _depositToken);
    }

    /// @notice Returns the number of assets in the registry
    /// @return The number of assets in the registry
    function getNumberOfAssets() external view returns (uint256) {
        return assetIds.length;
    }

    /// @notice Allows the registry manager to deactivate an asset
    /// @param _assetId The asset ID to deactivate
    function deactivateAsset(uint256 _assetId) external onlyRole(REGISTRY_MANAGER) {
        // deactivate the asset
        assetIds[_assetId].isActive = false;

        emit AssetDeactivated(_assetId);
    }

    /// @notice Allows the registry manager to update the max duration for an asset
    /// @param _assetId The asset ID to update the max duration for
    /// @param _newMaxDuration The new max duration for the asset
    function updateMaxDuration(uint256 _assetId, uint256 _newMaxDuration) external onlyRole(REGISTRY_MANAGER) {
        // update the max duration
        assetIds[_assetId].maxDuration = _newMaxDuration;

        emit MaxDurationUpdated(_assetId, _newMaxDuration);
    }

    /// @notice Allows for a cooldown period where users can withdraw their assets
    /// @param assetId The asset ID to upgrade the mature holdings vault for
    /// @param newMatureVaultAddress The address of the new mature holdings vault
    /// @dev Must be called prior to executing the upgrade, as all assets are transferred
    function authorizeUpgradeMatureHoldings(uint256 assetId, address newMatureVaultAddress) public onlyRole(UPGRADER) {
        if (newMatureVaultAddress == address(0)) revert CannotBeZeroAddress();

        authorizeMatureUpgradeAt[assetId] = block.timestamp + 3 days;
        authorizedNewMatureVaultAddress[assetId] = newMatureVaultAddress;

        emit UpgradeMatureVaultInitiated(newMatureVaultAddress, authorizeMatureUpgradeAt[assetId]);
    }

    /// @notice Allows the registry manager to upgrade the mature holding vault for a given asset
    /// @param assetId The asset ID to upgrade the mature holding vault for
    /// @dev Must first comply with the upgrade authorization period
    function upgradeMatureHoldingVault(uint256 assetId) external onlyRole(UPGRADER) {
        if (
            block.timestamp < authorizeMatureUpgradeAt[assetId] 
            && authorizeMatureUpgradeAt[assetId] != 0
        ) revert UpgradeNotAuthorized();

        address previousMaturedVault = assetIds[assetId].maturedHoldingVault;
        address newMaturedVault = authorizedNewMatureVaultAddress[assetId];
        
        // ensure it isn't the zero address
        if (newMaturedVault == address(0)) revert CannotBeZeroAddress();

        // have the old vault send all it's assets to the new vault
        IMaturedVault(previousMaturedVault).transferAssets(newMaturedVault);

        // update the matured vault address
        assetIds[assetId].maturedHoldingVault = newMaturedVault;

        emit MatureVaultMigrated(assetId, previousMaturedVault, newMaturedVault);

        authorizeMatureUpgradeAt[assetId] = 0;
    }

    /// @notice Allows pausers to halt deposits & withdrawals 
    function pause() external onlyRole(PAUSER) {
        isPaused = true;
        emit Paused();
    }

    /// @notice Unpauses deposits & withdrawals
    function unpause() external onlyRole(PAUSER) {
        isPaused = false;
        emit Unpaused();
    }
   
    /// @notice Sets the fee manager & reward distributor addresses
    /// @param _feeManager The address of the fee manager
    /// @param _rewardDistributor The address of the reward distributor
    function setFeeAddresses(address _feeManager, address _rewardDistributor) external onlyRole(REGISTRY_MANAGER) {
        feeManager = _feeManager;
        rewardDistributor = _rewardDistributor;
    }


    ////////// Vault Deployment //////////

    /// @notice deploy multiple maturities for a single assetId
    /// @param _assetId The asset ID to deploy the vaults for
    /// @param _maturities The maturities to deploy vaults for
    /// @return newVaults The addresses of the newly deployed vaults
    function deployCustomTranche(
        uint256 _assetId, 
        uint256[] calldata _maturities, 
        uint256  _amount,
        bytes calldata _depositBytes
    ) public returns (address[] memory) {
        if(!assetIds[_assetId].isActive) revert AssetNotActive();

        uint256 numMaturities = _maturities.length;
        address[] memory newVaults = new address[](numMaturities);

        for (uint256 i; i < numMaturities; i++) {
            // check that the vault doesn't already exist for this maturity
            if(assetIdToMaturityToVault[_assetId][_maturities[i]] != address(0)) revert VaultAlreadyExists();
            // clone the vault
            newVaults[i] = _createVault(_assetId, _maturities[i], _amount, _depositBytes);
        }
        return newVaults;
    }

    /// @notice Creates the vault, stores the address by maturity timestamp
    /// @dev allows for bypassing messing up the most recent tranche start time when 
    function _createVault(
        uint256 _assetId, 
        uint256 _maturity, 
        uint256 _amount,
        bytes calldata _depositBytes
    ) internal returns (address newVault) {
        if(_maturity > block.timestamp + assetIds[_assetId].maxDuration) revert MaturityBeyondMaxDuration();

        // clone the vault implementation
        newVault = _clone(assetIds[_assetId].vaultImplementation);
        
        // now that the vault exists, have intermediary pull directly from user to the vault
        IIntermediary(assetIds[_assetId].intermediary).pullFundsFromUserToVault(
            msg.sender,
            newVault, 
            assetIds[_assetId].depositToken,
            _amount,
            _depositBytes
        );

        // initialize the new cloned vault
        IProxyVault(newVault).initialize(
            feeManager,
            assetIds[_assetId].depositToken, 
            _amount,
            _maturity,
            _assetId,
            assetIds[_assetId].erc1155Receipt,
            assetIds[_assetId].depositVaultInitData,
            _depositBytes
        );

        // store the deployed vault address by the asset id & maturity timestamp
        assetIdToMaturityToVault[_assetId][_maturity] = newVault;

        // set the token id parameters
        IERC1155Receipt(assetIds[_assetId].erc1155Receipt).initializeTokenId(
            _assetId, 
            newVault, 
            _maturity, 
            assetIds[_assetId].erc1155ReceiptInitData
        );

        // store the token id mappings
        assetIdToVaultToTokenId[_assetId][newVault] = _maturity;

        // mint the tokens to the user
        IERC1155Receipt(assetIds[_assetId].erc1155Receipt).mint(msg.sender, _maturity, _amount, "");

        emit NewMaturityCreated(_assetId, newVault, _maturity);
    }

    /// @notice Clones a contract, pulled from Convex Booster. Not specific to Convex vaults.
    /// @param implementation The address of the implementation to clone
    /// @return result The address of the newly cloned contract
    function _clone(address implementation) internal returns (address result) {
        bytes20 implementationBytes = bytes20(implementation);

        assembly {
            let clone := mload(0x40)
            mstore(clone, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
            mstore(add(clone, 0x14), implementationBytes)
            mstore(add(clone, 0x28), 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000)
            result := create(0, clone, 0x37)
        }
    }


    ////////// User Interaction //////////

    /// @notice Allows user to deploy a vault and deposit into it.
    /// @notice Allows for a single maturity creation, to create a whole tranche, use deployCustomTranche
    /// @param assetId The asset ID to deploy the vault for
    /// @param amount The amount to deposit into the vault
    /// @param maturityTimestamp The timestamp of the maturity
    /// @return vault The address of the newly deployed vault
    /// @dev This contract cannot accept tokens that have a tax on transfer, as it doesn't calculate for that.
    function deployVaultAndDeposit(
        uint256 assetId, 
        uint256 amount, 
        uint256 maturityTimestamp,
        bytes calldata depositData
    ) public nonReentrant returns (address vault) {
        if(isPaused) revert IsPaused();
        if(!assetIds[assetId].isActive) revert AssetNotActive();
        if(assetIdToMaturityToVault[assetId][maturityTimestamp] != address(0)) revert VaultAlreadyExists();

        // first deploy the vault, pulling seed asset in
        vault = _createVault(assetId, maturityTimestamp, amount, depositData);

        emit Deposited(msg.sender, assetId, amount, maturityTimestamp);
    }

    /// @notice Allows a user to create a custom tranche of vaults & deposit into them
    /// @param _assetId The asset ID to deploy the vaults for
    /// @param _maturities The maturities to deploy vaults for
    /// @param _amounts The amounts to deposit into each vault
    /// @return newVaults The addresses of the newly deployed vaults
    /// @dev This contract cannot accept tokens that have a tax on transfer, as it doesn't calculate for that.
    function deployCustomTranche(
        uint256 _assetId, 
        uint256[] calldata _maturities,
        uint256[] calldata _amounts,
        bytes calldata _depositBytes
    ) public returns (address[] memory) {
        if(!assetIds[_assetId].isActive) revert AssetNotActive();

        uint256 numMaturities = _maturities.length;

        // instantiate the return array
        address[] memory newVaults = new address[](numMaturities);

        // for this method of depositing, the initialization amount is the user's deposit
        for (uint256 i; i < numMaturities; i++) {
            // check that the vault doesn't already exist for this maturity
            if(assetIdToMaturityToVault[_assetId][_maturities[i]] != address(0)) revert VaultAlreadyExists();
            // clone the vault
            newVaults[i] = _createVault(_assetId, _maturities[i], _amounts[i], _depositBytes);
        }

        return newVaults;
    }

    /// @notice Allows a user to deposit into a pre-existing vault
    /// @param assetId The asset ID to deposit into
    /// @param amount The amount to deposit
    /// @param maturityTimestamp The maturity timestamp to deposit into
    /// @dev This contract cannot accept tokens that have a tax on transfer, as it doesn't calculate for that.
    ///
    function deposit(
        uint256 assetId, 
        uint256 amount, 
        uint256 maturityTimestamp,
        bytes calldata _depositBytes
    ) public nonReentrant {             
        // check that withdrawals are not paused
        if(isPaused) revert IsPaused();
        
        _depositAndMint(assetId, amount, maturityTimestamp, _depositBytes);
    }

    /// @notice Allows a user to deposit amounts into various assetIds & maturities
    /// @dev If wanting to deposit into the same assetId but at different maturities, have multiple entries in the array
    /// @param _assetIds The assetIds to deposit into
    /// @param _amounts The amounts to deposit
    /// @param _maturityTimestamps The maturity timestamps to deposit into
    /// @dev This contract cannot accept tokens that have a tax on transfer, as it doesn't calculate for that.
    /// @dev All input arrays must be the same length
    function depositMany(
        uint256[] calldata _assetIds, 
        uint256[] calldata _amounts, 
        uint256[] calldata _maturityTimestamps,
        bytes[] calldata _depositBytes
    ) external nonReentrant {     
        // check that withdrawals are not paused
        if(isPaused) revert IsPaused();

        uint256 numAssets = _assetIds.length;
        for (uint256 i; i < numAssets; i++) {
            _depositAndMint(_assetIds[i], _amounts[i], _maturityTimestamps[i], _depositBytes[i]);
        }
    }

    /// @notice Executes the deposit and minting of receipts
    /// @param assetId The asset ID to deposit into
    /// @param amount The amount to deposit
    /// @param maturityTimestamp The maturity timestamp to deposit into
    /// @dev This contract cannot accept tokens that have a tax on transfer, as it doesn't calculate for that.
    function _depositAndMint(
        uint256 assetId, 
        uint256 amount, 
        uint256 maturityTimestamp, 
        bytes calldata depositBytes
    ) internal {
        // check that the assetId is active
        if (!assetIds[assetId].isActive) revert AssetNotActive();

        address vault = assetIdToMaturityToVault[assetId][maturityTimestamp];
        // sanity check, as this would be a terrible situation
        if (vault == address(0)) revert CannotBeZeroAddress();

        // pull in the deposit asset from the user directly to the vault
        IIntermediary(assetIds[assetId].intermediary).pullFundsFromUserToVault(
            msg.sender,
            vault, 
            assetIds[assetId].depositToken,
            amount,
            depositBytes
        );

        // Vault pulls deposit asset from user
        IProxyVault(vault).deposit(amount, depositBytes);

        // mint the tokens to the user
        IERC1155Receipt(assetIds[assetId].erc1155Receipt).mint(msg.sender, maturityTimestamp, amount, "");
        emit Deposited(msg.sender, assetId, amount, maturityTimestamp);
    }

    /// @notice Once the stake is matured, anyone can trigger the transfer from the vault to the matured holdings vault
    /// @param assetId The asset id of the stake
    /// @param vault The vault address of the stake
    /// @param maturityTimestamp The maturity timestamp of the stake
    /// @return withdrawnAmount The amount of tokens withdrawn
    function migrateToMaturedVault(
        uint256 assetId,
        address vault,
        uint256 maturityTimestamp
    ) public nonReentrant returns (uint256 withdrawnAmount) {
        address matureVault = assetIds[assetId].maturedHoldingVault;

        // claim rewards, withdraw staked, transfer to mature holdings vault
        withdrawnAmount = _redeemLocked(
            assetId, 
            vault, 
            matureVault,
            maturityTimestamp,
            false,
            address(0),
            0
        );
    }

    /// @notice Allows a user to withdraw their stake from a vault
    /// @param assetId The asset id of the stake
    /// @param vault The vault address of the stake
    /// @param maturityTimestamp The maturity timestamp of the stake
    /// @param toUser Whether to send the stake to the user or only to the matured holdings vault
    /// @param user The user to send the stake to (if toUser is true)
    /// @param userAmount The amount of stake to send to the user (if toUser is true)
    /// @return withdrawnAmount The amount of tokens withdrawn
    function _redeemLocked(
        uint256 assetId,
        address vault,
        address matureVault,
        uint256 maturityTimestamp,
        bool toUser,
        address user, 
        uint256 userAmount
    ) internal returns (uint256 withdrawnAmount) {
        // stake must be unlocked
        if (block.timestamp < maturityTimestamp && !locksReleased[assetId]) revert NotMatured();
        // check vault address
        if (vault != assetIdToMaturityToVault[assetId][maturityTimestamp]) revert VaultMismatch();
        // ensure that the underlying hasn't already been redeemed
        if (vaultMatured[vault]) revert LocksAlreadyReleased();

        // set the vault to matured so future withdraw calls pull from the matured vault
        vaultMatured[vault] = true; 

        // claim rewards, withdraw stake, send to user (if applicable), transfer remaining to matured holdings vault 
        withdrawnAmount = IProxyVault(vault).withdrawMatured(
            matureVault,
            toUser,
            user,
            userAmount
        );

        // Trigger the deposit within the matured holdings vault
        IMaturedVault(matureVault).depositMatured(withdrawnAmount - userAmount);

        emit DepositMatured(assetId, vault, withdrawnAmount);
    }

    /// @notice Withdraws assets from a mature vault
    /// @param _matureVault The mature vault to withdraw from
    /// @param _amount The amount to withdraw
    /// @param _recipient The recipient of the withdrawn assets
    function _withdrawMatured(
        address _matureVault,
        uint256 _amount,
        address _recipient
    ) internal {
        // withdraw from the mature holdings vault - transfers directly to caller
        IMaturedVault(_matureVault).withdrawMatured(_amount, _recipient);
    }

    /// @notice Allows a user to request a withdrawal of their underlying depsoit tokens by burning ERC1155 Receipt tokens
    /// @dev This is a single use allow - if user doesn't use the full `amount`, they still need to call this again to redeem a second time
    /// @param assetId The asset ID to withdraw from
    /// @param amount The amount to withdraw
    function requestRedemption(uint256 assetId, uint256 amount) external {        
        // check that withdrawals are not paused
        if (isPaused) revert IsPaused();
        
        userToWithdrawTS[msg.sender] = Withdrawal(
            {
                allowedTimestamp: (block.timestamp + 60), 
                amount: amount,
                isUsed: false
            }
        );

        emit UserRequestedWithdrawal(msg.sender, assetId, amount);
    }

    /// @notice Allows user to redeem their ERC1155 Receipt tokens for the underlying asset
    /// @param assetId The asset ID to redeem
    /// @param amount The amount to withdraw
    /// @param maturityTimestamp The maturity timestamp of the stake
    /// @dev The maturityTimestamp == tokenId
    /// @dev Can only be processed with a valid requestRedemption() call first
    function redeemReceipts(
        uint256 assetId,
        uint256 amount,
        uint256 maturityTimestamp
    ) external nonReentrant {                
        // check that withdrawals are not paused
        if (isPaused) revert IsPaused();

        // check that the user is allowed to withdraw
        if (userToWithdrawTS[msg.sender].allowedTimestamp > block.timestamp) revert WithdrawNotYetAuthorized();
        if (userToWithdrawTS[msg.sender].allowedTimestamp == 0) revert WithdrawNotYetAuthorized();
        if (userToWithdrawTS[msg.sender].isUsed) revert WithdrawNotYetAuthorized();
        if (userToWithdrawTS[msg.sender].amount < amount) revert WithdrawNotYetAuthorized();

        // use up their withdrawal request
        userToWithdrawTS[msg.sender].isUsed = true;

        // obtain the vault address
        address _vault = assetIdToMaturityToVault[assetId][maturityTimestamp];

        // burn receiver's balance of the receipt token
        IERC1155Receipt(assetIds[assetId].erc1155Receipt).burnFrom(msg.sender, maturityTimestamp, amount);

        address matureVault = assetIds[assetId].maturedHoldingVault;
        // if this is the first call post maturity we need to route through the actual deposit vault
        if (!vaultMatured[_vault]) {

            // withdrawFromVault: pull in asset, update vault balance, update user balance
            _redeemLocked(
                assetId, 
                _vault, 
                matureVault,
                maturityTimestamp,
                true,
                msg.sender,
                amount
            );

        // otherwise, the assets are being held in the matured holdings vault
        } else {
            // stake must be unlocked
            if(block.timestamp < maturityTimestamp && !locksReleased[assetId]) revert NotMatured();

            // withdraw the asset from the mature holdings vault & send it directly to the user
            _withdrawMatured(matureVault, amount, msg.sender);
        }
        emit MatureReceiptRedeemed(msg.sender, assetId, maturityTimestamp, amount);
    }

    ////////// Released Locked & Token Recovery //////////

    /// @notice If the underlying staking contract is released, this allows the early recovery of the assets.
    /// @param assetId All vaults in a given assetId are staked to the same contract, so release all of them.
    /// @param maturitiesToUnlock Array of the assetId's maturities to release.
    /// @param andDeactivate If true, the assetId will be deactivated after the locks are released.
    function releaseLocks(uint256 assetId, uint256[] calldata maturitiesToUnlock, bool andDeactivate) external onlyRole(REGISTRY_MANAGER) {
        if (locksReleased[assetId]) revert LocksAlreadyReleased();
        locksReleased[assetId] = true;

        address matureVault = assetIds[assetId].maturedHoldingVault;

        uint256 numMaturities = maturitiesToUnlock.length;
        for (uint256 i; i < numMaturities; i++) {
            // claim rewards, withdraw stake, transfer directly to mature holding vault
            _redeemLocked(
                assetId, 
                assetIdToMaturityToVault[assetId][maturitiesToUnlock[i]], 
                matureVault,
                maturitiesToUnlock[i], 
                false, 
                address(0), 
                0
            );
        }

        emit LocksReleased(assetId);

        // deactivate the asset id if requested
        if (andDeactivate) {
            assetIds[assetId].isActive = false;
            emit AssetDeactivated(assetId);
        }
    }

    /// @notice Allows the upgrader to rescue tokens from adadresses in the system
    /// @param _isVault If true, the token is pulled from the specified address first
    /// @param _from The address to pull the token from (used if _isVault is true)
    /// @param _token The token to pull
    /// @param _amount The amount to pull
    function rescueTokens(
        bool _isVault,
        address _from,
        address _token,
        uint256 _amount
    ) external onlyRole(UPGRADER) {
        // if isVault, first pull the token into here
        if (_isVault) {
            IProxyVault(_from).rescue(_token, _amount);
        }

        // Now send the tokens to the recoverer
        IERC20(_token).transfer(msg.sender, _amount);
        emit TokenRescued(_token, _amount, _from, msg.sender);
    }

    /// @notice Allows calling and resetting variables in the vaults. 
    /// @param _vault The vault to call the function on
    /// @param _data The data to pass to the vault
    /// @dev This allows passing arbitrary bytes down to the vault, though only calling a specific function.
    function setVaultVariables(address _vault, bytes calldata _data) external onlyRole(REGISTRY_MANAGER) {
        IProxyVault(_vault).setVars(_data);
        emit VaultVariablesSet(_vault, _data);
    }

    /// @notice Allows the Upgrader to transfer ownership of the vaults.
    /// @param _vault The vault to transfer ownership of
    /// @param _newOwner The new owner of the vault
    /// @dev event emitted at vault
    function transferVaultOwnership(address _vault, address _newOwner) external onlyRole(UPGRADER) {
        IProxyVault(_vault).transferOwnership(_newOwner);
    }


    ////////// Errors //////////
    error CannotBeZeroAddress();
    error BalanceMismatch();
    error LocksAlreadyReleased();
    error NoLongerUpgradeable();
    error UpgradeNotAuthorized();
    error InvalidUpgradeTarget(address,address);
    error RecoveryNotAllowedYet();
    error VaultMismatch();
    error InvalidAddress();
    error AssetNotActive();
    error NotPaused();
    error IsPaused();
    error WithdrawNotYetAuthorized();
    error NotMatured();
    error MaturityBeyondMaxDuration();
    error VaultAlreadyExists();


    ////////// Events //////////
    event NewAssetRegistered(uint256 indexed assetId, address depositToken);
    event AssetDeactivated(uint256 indexed assetId);
    event LocksReleased(uint256 indexed assetId);
    event Paused();
    event Unpaused();
    event UpgradeInitiated(address indexed newImplementation, uint256 indexed upgradeAt);
    event UpgradeabilityExtended(uint256 indexed becomesNonupgradeableAt);
    event UpgradeMatureVaultInitiated(address indexed newImplementation, uint256 indexed upgradeAt);
    event MatureVaultMigrated(uint256 indexed assetId, address indexed oldVault, address indexed newVault);
    event TokenRescued(address indexed _token, uint256 indexed _amount, address indexed _from, address _to);
    event VaultVariablesSet(address indexed vault, bytes data);
    event MaxDurationUpdated(uint256 indexed assetId, uint256 indexed newMaxDuration);
    event NewMaturityCreated(
        uint256 indexed assetId, 
        address indexed vault, 
        uint256 indexed maturityTimestamp
    );
//// TODO TODO Clean up this event as we are able to monitor for `TransferSingle` events for mint/burn
// @TBIQ could we just store the balances from 
    event Deposited(
        address user,
        uint256 assetId,
        uint256 amount,
        uint256 maturityTimestamp
    );
    event DepositMatured(
        uint256 indexed assetId,
        address vault,
        uint256 amount
    );
    event UserRequestedWithdrawal(
        address indexed user,
        uint256 assetId,
        uint256 indexed amount
    );
    event MatureReceiptRedeemed(
        address user,
        uint256 assetId,
        uint256 maturity,
        uint256 amount
    );
}