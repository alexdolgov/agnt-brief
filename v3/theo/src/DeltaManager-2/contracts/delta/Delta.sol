// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "../KYC.sol";
import "../interfaces/IDelta.sol";
import "../DeltaManager_PRD.sol";

contract Delta is AccessControlEnumerable, ERC20Burnable {
    bytes32 internal constant OPERATOR_ADMIN = keccak256("OPERATOR_ADMIN");
    bytes32 public constant MINTER_ADMIN = keccak256("MINTER_ADMIN");
    bytes32 internal constant SUPER_ADMIN = keccak256("SUPER_ADMIN");

    // KYC contract reference needs to be mutable
    KYC internal _kyc;
    address internal _clawbackAdmin;
    DeltaManager internal _deltaManager;
    mapping(address => uint256) internal _clawedBackAmount; // Keep track of amount clawed back for each user

    event TokensClawedBack(
        address indexed from,
        address indexed admin,
        uint256 amount
    );

    constructor(
        string memory name,
        string memory symbol,
        address operatorAdmin,
        address minterAdmin,
        address superAdmin,
        address defaultAdmin,
        address kyc
    ) ERC20(name, symbol) {
        _grantRole(OPERATOR_ADMIN, operatorAdmin);
        _grantRole(MINTER_ADMIN, minterAdmin);
        _grantRole(SUPER_ADMIN, superAdmin);
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _clawbackAdmin = superAdmin;
        _kyc = KYC(kyc);
    }

    // Override the decimals function to return 6 instead of the default 18
    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    function setDeltaManager(
        address deltaManager
    ) external onlyRole(OPERATOR_ADMIN) {
        _deltaManager = DeltaManager(deltaManager);
    }


    // Override grantRole to restrict to DEFAULT_ADMIN_ROLE
    function grantRole(bytes32 role, address account) public override(AccessControl, IAccessControl) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.grantRole(role, account);
    }

    // Override revokeRole to restrict to DEFAULT_ADMIN_ROLE
    function revokeRole(bytes32 role, address account) public override(AccessControl, IAccessControl) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.revokeRole(role, account);
    }

    function setClawbackWallet(
        address clawbackAdmin
    ) external onlyRole(SUPER_ADMIN) {
        require(
            clawbackAdmin != address(0),
            "Delta: _superAdmin is the zero address"
        );
        _clawbackAdmin = clawbackAdmin;
    }


    function setKYC(address kyc) external onlyRole(OPERATOR_ADMIN) {
        _kyc = KYC(kyc);
    }

    function clawback(address from, uint256 amount) external onlyRole(SUPER_ADMIN) {
        require(from != address(0), "Delta: Invalid address");
        require(amount > 0, "Delta: Invalid amount");
        _transfer(from, _clawbackAdmin, amount);

        _clawedBackAmount[from] += amount; // Keep track of amount clawed back for the user

        emit TokensClawedBack(from, _msgSender(), amount);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override {
        super._beforeTokenTransfer(from, to, amount);
        if (to != _clawbackAdmin) {
            // Check that both sender and receiver are KYC approved
            require(
                _kyc.isKYC(from) &&
                    _kyc.isKYC(to) &&
                    !_kyc.isBanned(from) &&
                    !_kyc.isBanned(to),
                "Delta: both sender and receiver need to be KYC approved"
            );
        }
    }

    function completeTransfer(
        address to,
        uint256 amount
    ) external onlyRole(MINTER_ADMIN) {
        require(to != address(0), "Delta: Invalid address");
        require(amount > 0, "Delta: Invalid amount");
        _transfer(msg.sender, to, amount);
    }

    function transferFrom(
        address from,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, recipient, amount);
        super.transferFrom(from, address(_deltaManager), amount);

        // Create a transfer promise in DeltaManager instead of transferring
        _deltaManager.createTransferPromise(from, recipient, amount);

        return true;
    }

    function transferFromManager(
        address from,
        address recipient,
        uint256 amount
    ) external onlyRole(MINTER_ADMIN) returns (bool) {
        return super.transferFrom(from, recipient, amount);
    }

    function transfer(
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(_msgSender(), recipient, amount);
        super.transfer(address(_deltaManager), amount);

        // Create a transfer promise in DeltaManager instead of transferring
        _deltaManager.createTransferPromise(_msgSender(), recipient, amount);

        return true;
    }

    function mint(address to, uint256 amount) public virtual {
        require(
            hasRole(MINTER_ADMIN, _msgSender()),
            "Delta: must have minter role to mint"
        );
        _mint(to, amount);
    }
}
