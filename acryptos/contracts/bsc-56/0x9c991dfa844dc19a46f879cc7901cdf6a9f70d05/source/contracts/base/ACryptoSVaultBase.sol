// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

// Using @openzeppelin/contracts-upgradeable@4.5.2
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "../ACryptoSVaultsController.sol";

abstract contract ACryptoSVaultBase is
    Initializable,
    ERC20Upgradeable,
    UUPSUpgradeable
{
    ACryptoSVaultsController public controller;
    ERC20Upgradeable public token;
    PriceHistory[] public priceHistory;
    uint256[47] private __gap;

    struct PriceHistory {
        uint128 blockNumber;
        uint128 timestamp;
        uint256 pricePerFullShare;
        uint256 priceUsd;
        uint256 priceIndexUnderlying;
        uint256 reserved0;
        uint256 reserved1;
        uint256 reserved2;
        uint256 reserved3;
        uint256 reserved4;
        uint256 reserved5;
        uint256 reserved6;
    }

    using SafeERC20Upgradeable for ERC20Upgradeable;

    event Withdraw(address indexed to, uint256 amount, uint256 shares);
    event Deposit(address indexed from, uint256 amount, uint256 shares);
    event PricePerFullShare(uint256 pricePerFullShare);

    function __ACryptoSVaultBase_init(
        string memory _name,
        string memory _symbol,
        address _controller,
        address _token
    ) internal initializer {
        __Context_init_unchained();
        __ERC20_init_unchained(_name, _symbol);

        __ERC1967Upgrade_init_unchained();
        __UUPSUpgradeable_init_unchained();

        __ACryptoSVaultBase_init_unchained(_controller, _token);
    }

    function __ACryptoSVaultBase_init_unchained(
        address _controller,
        address _token
    ) internal initializer {
        controller = ACryptoSVaultsController(_controller);
        token = ERC20Upgradeable(_token);
    }

    function balance() public view virtual returns (uint256) {
        return token.balanceOf(address(this));
    }

    function getPricePerFullShare() public view returns (uint256) {
        if (totalSupply() == 0) return 1e18;
        return (balance() * 1e18) / totalSupply();
    }

    function getPriceUsd() public view virtual returns (uint256);

    function depositAll() external {
        deposit(token.balanceOf(_msgSender()));
    }

    function deposit(uint256 amount) public payable virtual {
        uint256 vaultBalance = balance();
        uint256 before = token.balanceOf(address(this));
        token.safeTransferFrom(_msgSender(), address(this), amount);
        if (msg.value > 0) {
            IWETH(address(token)).deposit{value: msg.value}();
        }
        uint256 _after = token.balanceOf(address(this));
        amount = _after - before; // Additional check for deflationary tokens
        uint256 shares = 0;
        if (totalSupply() == 0) {
            shares = amount;
        } else {
            shares = (amount * totalSupply()) / vaultBalance;
        }
        _mint(_msgSender(), shares);

        emit Deposit(_msgSender(), amount, shares);
    }

    function withdrawAll() external {
        withdraw(balanceOf(_msgSender()));
    }

    function withdrawAllNative() external {
        withdrawNative(balanceOf(_msgSender()));
    }

    function withdraw(uint256 shares) public {
        _withdraw(shares, false);
    }

    function withdrawNative(uint256 shares) public {
        _withdraw(shares, true);
    }

    function getPriceHistoryLength() external view returns (uint256) {
        return priceHistory.length;
    }

    function getPriceHistory(uint256 last)
        external
        view
        returns (PriceHistory[] memory records)
    {
        if (last > priceHistory.length) last = priceHistory.length;
        records = new PriceHistory[](last);

        for (
            uint256 i = priceHistory.length;
            i > priceHistory.length - last;
            i--
        ) {
            records[priceHistory.length - i] = priceHistory[i - 1];
        }
    }

    function setController(address _controller)
        external
        virtual
        onlyGovernance
    {
        controller = ACryptoSVaultsController(_controller);
    }

    function _withdraw(uint256 shares, bool nativeAsset)
        internal
        virtual
        returns (uint256 amount)
    {
        amount = (balance() * shares) / totalSupply();
        _burn(_msgSender(), shares);

        amount = _beforeWithdrawTransfer(amount);

        if (nativeAsset) {
            IWETH(address(token)).withdraw(amount);
            payable(_msgSender()).transfer(amount);
        } else {
            token.safeTransfer(_msgSender(), amount);
        }

        emit Withdraw(_msgSender(), amount, shares);
    }

    function _beforeWithdrawTransfer(uint256 amount)
        internal
        virtual
        returns (uint256)
    {
        return amount;
    }

    function _logPrice() internal virtual {
        PriceHistory storage record = priceHistory.push();
        record.blockNumber = uint128(block.number);
        record.timestamp = uint128(block.timestamp);
        record.pricePerFullShare = getPricePerFullShare();
        record.priceUsd = getPriceUsd();
        _afterLogPrice(record);
    }

    function _afterLogPrice(PriceHistory storage record) internal virtual {}

    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
        onlyGovernance
    {}

    modifier onlyGovernance() {
        _onlyGovernance();
        _;
    }

    modifier onlyStrategist() {
        _onlyStrategist();
        _;
    }

    function _onlyGovernance() internal view virtual {
        require(
            controller.hasRole(controller.DEFAULT_ADMIN_ROLE(), _msgSender()),
            "!governance"
        );
    }

    function _onlyStrategist() internal view virtual {
        require(
            controller.hasRole(controller.DEFAULT_ADMIN_ROLE(), _msgSender()) ||
                controller.hasRole(controller.STRATEGIST_ROLE(), _msgSender()),
            "!strategist"
        );
    }

    receive() external payable {}
}

interface IWETH {
    function deposit() external payable;

    function withdraw(uint256) external;
}
