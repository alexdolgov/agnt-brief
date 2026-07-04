// SPDX-License-Identifier: GPL-2.0-or-later
// (C) Florence Finance, 2023 - https://florence.finance/

pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol"; // includes ContextUpgradeable

import "./interfaces/ArbitrumBridgingInterfaces.sol";

import "./Errors.sol";

contract FlorinTokenArbitrum is IArbToken, ERC20PermitUpgradeable, ERC20BurnableUpgradeable, OwnableUpgradeable {
    address public l2Gateway;
    address public override l1Address;

    modifier onlyL2Gateway() {
        require(msg.sender == l2Gateway, "NOT_GATEWAY");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _l2Gateway, address _l1TokenAddress) external initializer {
        _initializeArbitrumBridging(_l2Gateway, _l1TokenAddress);
        __ERC20_init_unchained("Florin", "FLR");
        __ERC20Permit_init("Florin");

        __Ownable_init_unchained();
    }

    function initializeArbitrumBridging(address _l2Gateway, address _l1TokenAddress) external onlyOwner {
        _initializeArbitrumBridging(_l2Gateway, _l1TokenAddress);
    }

    function _initializeArbitrumBridging(address _l2Gateway, address _l1TokenAddress) internal {
        l2Gateway = _l2Gateway;
        l1Address = _l1TokenAddress;
    }

    /**
     * @notice should increase token supply by amount, and should only be callable by the L2Gateway.
     */
    function bridgeMint(address account, uint256 amount) external override onlyL2Gateway {
        _mint(account, amount);
    }

    /**
     * @notice should decrease token supply by amount, and should only be callable by the L2Gateway.
     */
    function bridgeBurn(address account, uint256 amount) external override onlyL2Gateway {
        _burn(account, amount);
    }

    /// @dev Mints FLR. Protected, only be callable by owner which should be FlorinTreasury
    /// @param receiver receiver of the minted FLR
    /// @param amount amount to mint (18 decimals)
    function mint(address receiver, uint256 amount) external onlyOwner {
        if (amount == 0) {
            revert Errors.MintAmountMustBeGreaterThanZero();
        }
        _mint(receiver, amount);
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return "Florence Finance flrEUR";
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return "flrEUR";
    }
}
