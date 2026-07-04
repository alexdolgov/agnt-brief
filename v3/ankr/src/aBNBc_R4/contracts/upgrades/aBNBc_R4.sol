// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.6;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "../interface/IBondToken.sol";

contract aBNBc_R4 is OwnableUpgradeable, ERC20Upgradeable {
    /**
     * Variables
     */

    address private _binancePool;
    address private _bondToken;

    bool private _paused;

    /**
     * Events
     */

    event BinancePoolChanged(address indexed binancePool);
    event BondTokenChanged(address indexed bondToken);

    event Paused(address account);
    event Unpaused(address account);

    /**
     * Modifiers
     */

    modifier onlyMinter() {
        require(
            msg.sender == _binancePool || msg.sender == _bondToken,
            "Minter: not allowed"
        );
        _;
    }

    modifier whenNotPaused() {
        require(!paused(), "Pausable: paused");
        _;
    }

    modifier whenPaused() {
        require(paused(), "Pausable: not paused");
        _;
    }

    function initialize(address binancePool, address bondToken)
        public
        initializer
    {
        __Ownable_init();
        __ERC20_init_unchained("Ankr BNB Reward Bearing Certificate", "aBNBc");
        _binancePool = binancePool;
        _bondToken = bondToken;
        uint256 initSupply = IBondToken(_bondToken).totalSharesSupply();
        // mint init supply if not inizialized
        super._mint(address(_bondToken), initSupply);
    }

    function name() public pure override returns (string memory) {
        return "Ankr Reward Bearing BNB";
    }

    function symbol() public pure override returns (string memory) {
        return "ankrBNB";
    }

    function ratio() public view returns (uint256) {
        return IBondToken(_bondToken).ratio();
    }

    function burn(address account, uint256 amount)
        external
        whenNotPaused
        onlyMinter
    {
        _burn(account, amount);
    }

    function mint(address account, uint256 amount)
        external
        whenNotPaused
        onlyMinter
    {
        _mint(account, amount);
    }

    function mintApprovedTo(
        address account,
        address spender,
        uint256 amount
    ) external onlyMinter whenNotPaused {
        _mint(account, amount);
        _approve(account, spender, amount);
    }

    function changeBinancePool(address binancePool) external onlyOwner {
        require(binancePool != address(0), "zero address");
        require(
            AddressUpgradeable.isContract(binancePool),
            "non-contract address"
        );
        _binancePool = binancePool;
        emit BinancePoolChanged(binancePool);
    }

    function changeBondToken(address bondToken) external onlyOwner {
        require(bondToken != address(0), "zero address");
        require(
            AddressUpgradeable.isContract(bondToken),
            "non-contract address"
        );
        _bondToken = bondToken;
        emit BondTokenChanged(bondToken);
    }

    function balanceWithRewardsOf(address account)
        public
        view
        returns (uint256)
    {
        uint256 shares = this.balanceOf(account);
        return IBondToken(_bondToken).sharesToBonds(shares);
    }

    function isRebasing() public pure returns (bool) {
        return false;
    }

    function transfer(address to, uint256 amount)
        public
        virtual
        override
        whenNotPaused
        returns (bool)
    {
        address ownerAddress = _msgSender();
        _transfer(ownerAddress, to, amount);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override whenNotPaused returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * PAUSABLE
     */

    function paused() public view returns (bool) {
        return _paused;
    }

    function pause() external whenNotPaused onlyOwner {
        _paused = true;
        emit Paused(_msgSender());
    }

    function _unpause() external whenPaused onlyOwner {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}
