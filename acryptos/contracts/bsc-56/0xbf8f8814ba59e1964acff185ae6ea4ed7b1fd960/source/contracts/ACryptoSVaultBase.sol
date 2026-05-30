// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

// Using @openzeppelin/contracts-upgradeable@4.3.3
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

abstract contract ACryptoSVaultBase is
    Initializable,
    ERC20Upgradeable,
    UUPSUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;

    IERC20Upgradeable public token;
    address public governance;
    uint256[48] private __gap;

    function __ACryptoSVaultBase_init(
        string memory name,
        string memory symbol,
        address _token,
        address _governance
    ) internal initializer {
        __Context_init_unchained();
        __ERC20_init_unchained(name, symbol);

        __ERC1967Upgrade_init_unchained();
        __UUPSUpgradeable_init_unchained();

        __ACryptoSVaultBase_init_unchained(_token, _governance);
    }

    function __ACryptoSVaultBase_init_unchained(
        address _token,
        address _governance
    ) internal initializer {
        token = IERC20Upgradeable(_token);
        governance = _governance;
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
        onlyGovernance
    {}

    function balance() public view virtual returns (uint256) {
        return token.balanceOf(address(this));
    }

    function getPricePerFullShare() public view returns (uint256) {
        return (balance() * 1e18) / totalSupply();
    }

    function setGovernance(address _governance) public onlyGovernance {
        governance = _governance;
    }

    function depositAll() external {
        deposit(token.balanceOf(_msgSender()));
    }

    function deposit(uint256 amount) public virtual {
        uint256 vaultBalance = balance();
        uint256 before = token.balanceOf(address(this));
        token.safeTransferFrom(_msgSender(), address(this), amount);
        uint256 _after = token.balanceOf(address(this));
        amount = _after - before; // Additional check for deflationary tokens
        uint256 shares = 0;
        if (totalSupply() == 0) {
            shares = amount;
        } else {
            shares = (amount * totalSupply()) / vaultBalance;
        }
        _mint(_msgSender(), shares);
    }

    function withdrawAll() external {
        withdraw(balanceOf(_msgSender()));
    }

    function withdraw(uint256 shares) public {
        uint256 amount = (balance() * shares) / totalSupply();
        _burn(_msgSender(), shares);

        _withdraw(amount);
    }

    function _withdraw(uint256 amount) internal virtual {
        token.safeTransfer(_msgSender(), amount);
    }

    modifier onlyGovernance() {
        require(_msgSender() == governance, "!governance");
        _;
    }
}
