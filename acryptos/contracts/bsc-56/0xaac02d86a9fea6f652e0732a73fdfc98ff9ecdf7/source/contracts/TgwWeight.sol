// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

// Using @openzeppelin/contracts-upgradeable@4.3.2
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

interface IACryptoSVaultGovernance {
    function averageBalanceOf(address account)
        external
        view
        returns (uint256 balance);
}

contract TgwWeight is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    address constant TGW_VAULT =
        address(0x8888888818b6e5BBdF1F73c5F3A7F73b2454d2cA);

    // address constant ACS_NFT =
    //     address(0x88888888F5753904C4D42f696EBF24F277828708);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address owner) public virtual initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
        transferOwnership(owner);
    }

    function name() public view virtual returns (string memory) {
        return "The Great Wave Vault Weight";
    }

    function symbol() public view virtual returns (string memory) {
        return "TgwWeight";
    }

    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    function totalSupply() public view virtual returns (uint256) {
        return IERC20Upgradeable(TGW_VAULT).totalSupply();
    }

    function balanceOf(address account) public view virtual returns (uint256) {
        return IACryptoSVaultGovernance(TGW_VAULT).averageBalanceOf(account);
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
        onlyOwner
    {}
}
