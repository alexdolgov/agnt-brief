// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { ERC4626Upgradeable } from
    "@openzeppelin-contracts-upgradeable-5.1.0/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/access/AccessControlUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/utils/PausableUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/UUPSUpgradeable.sol";
import { IERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin-contracts-5.1.0/utils/math/Math.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/utils/SafeERC20.sol";
import { IStakedLBGT } from "./interfaces/IStakedLBGT.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { Constants } from "../Constants.sol";

contract StakedLbgt is
    IStakedLBGT,
    ERC4626Upgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    UUPSUpgradeable
{
    using Math for uint256;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTANTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    address public constant LBGT = Constants.LBGT;

    uint256 private constant BASIS_POINT_SCALE = 1e4;

    bytes32 public constant ROLE_GOD = Constants.ROLE_GOD;
    bytes32 public constant ROLE_ADMIN = Constants.ROLE_ADMIN;
    bytes32 public constant ROLE_CURATOR = Constants.ROLE_CURATOR;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          STORAGE                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IStakedLBGT
    uint16 public exitFee;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      INITIALIZATION                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __UUPSUpgradeable_init();
        __ERC4626_init(IERC20(LBGT));
        __ERC20_init("Staked LBGT", "stLBGT");
        __AccessControl_init();
        __Pausable_init();

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);
        _setRoleAdmin(ROLE_CURATOR, ROLE_GOD);
        _setRoleAdmin(ROLE_CURATOR, ROLE_ADMIN);

        _grantRole(ROLE_GOD, _owner);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IStakedLBGT
    function setExitFee(uint16 _exitFee) public onlyRole(ROLE_ADMIN) {
        require(_exitFee <= BASIS_POINT_SCALE, InvalidFee(_exitFee));
        exitFee = _exitFee;
        emit ExitFeeSet(_exitFee);
    }

    /// @inheritdoc IStakedLBGT
    function pause() public onlyRole(ROLE_CURATOR) {
        _pause();
    }

    /// @inheritdoc IStakedLBGT
    function unpause() public onlyRole(ROLE_ADMIN) {
        _unpause();
    }

    function _authorizeUpgrade(address) internal override onlyRole(ROLE_GOD) { }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      PUBLIC FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IERC4626
    function deposit(
        uint256 assets,
        address receiver
    )
        public
        override(IERC4626, ERC4626Upgradeable)
        whenNotPaused
        returns (uint256)
    {
        return super.deposit(assets, receiver);
    }

    /// @inheritdoc IERC4626
    function mint(
        uint256 shares,
        address receiver
    )
        public
        override(IERC4626, ERC4626Upgradeable)
        whenNotPaused
        returns (uint256)
    {
        return super.mint(shares, receiver);
    }

    /// @inheritdoc IERC4626
    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    )
        public
        override(IERC4626, ERC4626Upgradeable)
        whenNotPaused
        returns (uint256)
    {
        return super.withdraw(assets, receiver, owner);
    }

    /// @inheritdoc IERC4626
    function redeem(
        uint256 shares,
        address receiver,
        address owner
    )
        public
        override(IERC4626, ERC4626Upgradeable)
        whenNotPaused
        returns (uint256)
    {
        return super.redeem(shares, receiver, owner);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        PUBLIC VIEWS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IERC4626
    function previewDeposit(uint256 assets)
        public
        view
        virtual
        override(IERC4626, ERC4626Upgradeable)
        returns (uint256)
    {
        return super.previewDeposit(assets);
    }

    /// @inheritdoc IERC4626
    function previewMint(uint256 shares) public view virtual override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return super.previewMint(shares);
    }

    /// @inheritdoc IERC4626
    function previewWithdraw(uint256 assets)
        public
        view
        virtual
        override(IERC4626, ERC4626Upgradeable)
        returns (uint256)
    {
        uint256 fee = _feeOnRaw(assets, _exitFeeBasisPoints());
        return super.previewWithdraw(assets + fee);
    }

    /// @inheritdoc IERC4626
    function previewRedeem(uint256 shares)
        public
        view
        virtual
        override(IERC4626, ERC4626Upgradeable)
        returns (uint256)
    {
        uint256 assets = super.previewRedeem(shares);
        return assets - _feeOnTotal(assets, _exitFeeBasisPoints());
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      INTERNAL VIEWS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _exitFeeBasisPoints() internal view virtual returns (uint256) {
        return exitFee;
    }

    /// @dev Calculates the fees that should be added to an amount `assets` that does not already include fees.
    /// Used in {IERC4626-withdraw} operations.
    function _feeOnRaw(uint256 assets, uint256 feeBasisPoints) private pure returns (uint256) {
        return assets.mulDiv(feeBasisPoints, BASIS_POINT_SCALE, Math.Rounding.Ceil);
    }

    /// @dev Calculates the fee part of an amount `assets` that already includes fees.
    /// Used in {IERC4626-redeem} operations.
    function _feeOnTotal(uint256 assets, uint256 feeBasisPoints) private pure returns (uint256) {
        return assets.mulDiv(feeBasisPoints, feeBasisPoints + BASIS_POINT_SCALE, Math.Rounding.Ceil);
    }
}
