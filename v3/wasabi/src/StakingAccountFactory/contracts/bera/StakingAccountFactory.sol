// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import {UpgradeableBeacon} from "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IStakingAccountFactory} from "./IStakingAccountFactory.sol";
import {StakingAccount, IStakingAccount} from "./StakingAccount.sol";
import {IMerkleDistributor} from "./IMerkleDistributor.sol";
import {PerpManager} from "../admin/PerpManager.sol";
import {IWasabiPerps} from "../IWasabiPerps.sol";

contract StakingAccountFactory is 
    IStakingAccountFactory, 
    UUPSUpgradeable, 
    OwnableUpgradeable, 
    ReentrancyGuardUpgradeable 
{
    using SafeERC20 for IERC20;
    
    UpgradeableBeacon public beacon;
    /// @dev DEPRECATED 2026-05-01: pool addresses moved to PerpManager (IAddressProvider).
    ///      Slot retained for storage layout compatibility on UUPS upgrade. Read live values
    ///      via `longPool()` / `shortPool()` (delegate to the manager) or `_getPools()`.
    /// @custom:oz-renamed-from longPool
    IWasabiPerps public _deprecated_longPool;
    /// @custom:oz-renamed-from shortPool
    IWasabiPerps public _deprecated_shortPool;

    mapping(address user => address stakingAccount) public userToStakingAccount;
    mapping(address token => IStakingAccount.StakingContract stakingContract) public tokenToStakingContract;

    IMerkleDistributor public constant IR_DISTRIBUTOR = IMerkleDistributor(0x5F791523314ca809A1146184311e35001b6E6FC8);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         MODIFIERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Checks if the caller is one of the pool contracts.
    ///      Pool addresses are sourced live from the manager (IAddressProvider).
    modifier onlyPool() {
        (IWasabiPerps _longPool, IWasabiPerps _shortPool) = _getPools();
        if (msg.sender != address(_longPool)) {
            // Nested checks save a little gas compared to using &&
            if (msg.sender != address(_shortPool)) revert CallerNotPool();
        }
        _;
    }

    /// @dev Checks if the caller is an admin
    modifier onlyAdmin() {
        _getManager().isAdmin(msg.sender);
        _;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        INITIALIZER                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the factory.
    ///         The 2nd and 3rd parameters (long pool, short pool) are UNUSED — kept
    ///         anonymous for ABI compatibility with existing deploy scripts. Pool
    ///         addresses are read live from the manager (IAddressProvider) as of 2026-05-01.
    /// @param _manager The PerpManager contract
    function initialize(
        PerpManager _manager,
        IWasabiPerps /* _longPool */,
        IWasabiPerps /* _shortPool */
    ) public initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(address(_manager));
        __ReentrancyGuard_init();

        beacon = new UpgradeableBeacon(address(new StakingAccount()), address(this));
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           GETTERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IStakingAccountFactory
    function getStakingContract(address _token) external view returns (IStakingAccount.StakingContract memory) {
        return tokenToStakingContract[_token];
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      ADMIN FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IStakingAccountFactory
    function setStakingContractForToken(
        address _stakingToken, 
        address _stakingContract, 
        IStakingAccount.StakingType _stakingType
    ) external onlyAdmin {
        tokenToStakingContract[_stakingToken] = IStakingAccount.StakingContract(_stakingContract, _stakingType);
    }

    /// @inheritdoc IStakingAccountFactory
    function upgradeBeacon(address _newImplementation) external onlyAdmin {
        beacon.upgradeTo(_newImplementation);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       POOL FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IStakingAccountFactory
    function stakePosition(
        IWasabiPerps.Position memory _position, 
        IWasabiPerps.Position memory _existingPosition
    ) public onlyPool {
        (IStakingAccount stakingAccount, IStakingAccount.StakingContract memory stakingContract)
            = _getStakingAccountAndContract(_position.trader, _position.collateralCurrency, true);

        IERC20 collateralToken = IERC20(_position.collateralCurrency);
        collateralToken.safeTransferFrom(
            msg.sender, 
            address(stakingAccount), 
            _position.collateralAmount - _existingPosition.collateralAmount
        );

        stakingAccount.stakePosition(_position, _existingPosition, stakingContract);

        emit StakedPosition(
            _position.trader,
            address(stakingAccount),
            stakingContract.contractAddress,
            stakingContract.stakingType,
            _position.id,
            _position.collateralAmount
        );
    }

    /// @inheritdoc IStakingAccountFactory
    function unstakePosition(IWasabiPerps.Position memory _position, uint256 _amount) public onlyPool {
        (IStakingAccount stakingAccount, IStakingAccount.StakingContract memory stakingContract)
            = _getStakingAccountAndContract(_position.trader, _position.collateralCurrency, false);

        _claimRewards(_position.collateralCurrency, _position.trader);
        stakingAccount.unstakePosition(_position, stakingContract, msg.sender, _amount);

        emit UnstakedPosition(
            _position.trader,
            address(stakingAccount),
            stakingContract.contractAddress,
            stakingContract.stakingType,
            _position.id,
            _position.collateralAmount
        );
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           WRITES                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IStakingAccountFactory
    function claimRewards(address _stakingToken) public nonReentrant {
        _claimRewards(_stakingToken, msg.sender);
    }

    /// @inheritdoc IStakingAccountFactory
    function claimIRAirdrop(address _user, uint256 _amount, bytes32[] calldata _merkleProof) public nonReentrant onlyAdmin {
        address stakingAccount = userToStakingAccount[_user];
        if (stakingAccount == address(0)) revert StakingAccountNotDeployed(_user);

        (bool canClaim, uint256 claimableAmount) = IR_DISTRIBUTOR.canClaim(stakingAccount, _amount, _merkleProof);
        if (!canClaim || claimableAmount < _amount) revert InvalidIRAirdropAmount(_user, _amount, claimableAmount);

        IStakingAccount(stakingAccount).claimIRAirdrop(_amount, _merkleProof);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      INTERNAL FUNCTIONS                    */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _claimRewards(address _stakingToken, address _user) internal {
        (IStakingAccount stakingAccount, IStakingAccount.StakingContract memory stakingContract)
            = _getStakingAccountAndContract(_user, _stakingToken, false);

        (IERC20[] memory tokens, uint256[] memory amounts) = stakingAccount.claimRewards(stakingContract);
        for (uint256 i; i < tokens.length; ) {
            emit StakingRewardsClaimed(
                _user,
                address(stakingAccount),
                stakingContract.contractAddress,
                stakingContract.stakingType,
                address(tokens[i]),
                amounts[i]
            );
            unchecked {
                i++;
            }
        }
    }

    function _getStakingAccountAndContract(
        address _user,
        address _token,
        bool _createIfNotDeployed
    ) internal returns (IStakingAccount, IStakingAccount.StakingContract memory) {
        address stakingAccount = userToStakingAccount[_user];
        if (stakingAccount == address(0)) {
            if (_createIfNotDeployed) {
                stakingAccount = address(new BeaconProxy(
                    address(beacon), 
                    abi.encodeWithSelector(StakingAccount.initialize.selector, _getManager(), _user)
                ));
                userToStakingAccount[_user] = stakingAccount;
                emit StakingAccountCreated(_user, stakingAccount);
            } else {
                revert StakingAccountNotDeployed(_user);
            }
        }
        IStakingAccount.StakingContract memory stakingContract = tokenToStakingContract[_token];
        if (stakingContract.contractAddress == address(0)) revert StakingContractNotSetForToken(_token);
        return (IStakingAccount(stakingAccount), stakingContract);
    }

    /// solhint-disable-next-line no-empty-blocks
    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address) internal view override onlyAdmin {}

    /// @dev returns the manager of the contract
    /// @dev Returns both pool addresses from the manager in one helper.
    function _getPools() internal view returns (IWasabiPerps _longPool, IWasabiPerps _shortPool) {
        PerpManager mgr = _getManager();
        _longPool = mgr.longPool();
        _shortPool = mgr.shortPool();
    }

    /// @notice Returns the live long pool address from the manager.
    ///         Backwards-compatible shim for callers that previously read
    ///         `factory.longPool()` from the now-deprecated local storage.
    function longPool() external view returns (IWasabiPerps) {
        return _getManager().longPool();
    }

    /// @notice Returns the live short pool address from the manager.
    ///         Backwards-compatible shim.
    function shortPool() external view returns (IWasabiPerps) {
        return _getManager().shortPool();
    }

    function _getManager() internal view returns (PerpManager) {
        return PerpManager(owner());
    }
}
