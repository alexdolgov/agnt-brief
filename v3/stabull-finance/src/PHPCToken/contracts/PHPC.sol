//SPDX-License-Identifier: MIT
pragma solidity =0.8.7;

/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface UpgradedStandardToken is IERC20 {
    // those methods are called by the legacy contract
    // and they must ensure msg.sender to be the contract address
    function transferByLegacy(address from, address to, uint256 value) external returns (bool);
    function transferFromByLegacy(address sender, address from, address spender, uint256 value)
        external
        returns (bool);
    function approveByLegacy(address from, address spender, uint256 value) external returns (bool);
}

/**
 * @title Pausable
 * @dev Base contract which allows children to implement an emergency stop mechanism.
 */
abstract contract Pausable is Ownable {
    bool public paused = false;

    event Pause();
    event Unpause();

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     */
    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     */
    modifier whenPaused() {
        require(paused, "not paused");
        _;
    }

    /**
     * @dev called by the owner to pause, triggers stopped state
     */
    function pause() external onlyOwner whenNotPaused {
        paused = true;
        emit Pause();
    }

    /**
     * @dev called by the owner to unpause, returns to normal state
     */
    function unpause() external onlyOwner whenPaused {
        paused = false;
        emit Unpause();
    }
}

abstract contract BlackList is Ownable, ERC20 {
    // black list
    mapping(address => bool) public isBlackListed;

    event DestroyedBlackFunds(address _blackListedUser, uint256 _balance);

    event AddedBlackList(address _user);

    event RemovedBlackList(address _user);

    /////// Getters to allow the same blacklist to be used also by other contracts (including upgraded Tether) ///////
    function getBlackListStatus(address _maker) external view returns (bool) {
        return isBlackListed[_maker];
    }

    function getOwner() external view returns (address) {
        return owner();
    }

    function addBlackList(address _evilUser) external onlyOwner {
        isBlackListed[_evilUser] = true;
        emit AddedBlackList(_evilUser);
    }

    function removeBlackList(address _clearedUser) external onlyOwner {
        isBlackListed[_clearedUser] = false;
        emit RemovedBlackList(_clearedUser);
    }

    // burn dirty funds from black user
    function destroyBlackFunds(address _blackListedUser) external onlyOwner {
        require(isBlackListed[_blackListedUser], "not in black list");
        uint256 dirtyFunds = ERC20.balanceOf(_blackListedUser);
        ERC20._burn(_blackListedUser, dirtyFunds);
        emit DestroyedBlackFunds(_blackListedUser, dirtyFunds);
    }
}

/**
 * @title Coins Philippine Peso
 * @author csyr.peng@coins.ph
 */
contract PHPCToken is Pausable, ERC20, BlackList {
    uint8 private decimal;
    address public upgradedAddress;
    bool public deprecated;

    // Called when new token are issued
    event Issue(uint256 amount);

    // Called when tokens are redeemed
    event Redeem(uint256 amount);

    // Called when contract is deprecated
    event Deprecate(address newAddress);

    // Called if contract ever adds fees
    event Params(uint256 feeBasisPoints, uint256 maxFee);

    //  The contract can be initialized with a number of tokens
    //  All the tokens are deposited to the owner address
    //
    // @param _name Token Name
    // @param _symbol Token symbol
    constructor(uint8 _decimal, uint256 _initialSupply) ERC20("Coins Philippine Peso", "PHPC") {
        // token decimal
        decimal = _decimal;
        // mint initial amount to owner
        _mint(msg.sender, _initialSupply);
        deprecated = false;
    }

    // deprecate current contract in favour of a new one
    function deprecate(address _upgradedAddress) external onlyOwner {
        require(_upgradedAddress != address(0), "invalid upgrade address");
        deprecated = true;
        upgradedAddress = _upgradedAddress;
        emit Deprecate(_upgradedAddress);
    }

    function decimals() public view override returns (uint8) {
        return decimal;
    }

    // Forward ERC20 methods to upgraded contract if this one is deprecated
    function transfer(address _to, uint256 _value) public override whenNotPaused returns (bool) {
        require(!isBlackListed[msg.sender], "user in black list");
        if (deprecated) {
            return UpgradedStandardToken(upgradedAddress).transferByLegacy(msg.sender, _to, _value);
        } else {
            return ERC20.transfer(_to, _value);
        }
    }

    // Forward ERC20 methods to upgraded contract if this one is deprecated
    function transferFrom(address _from, address _to, uint256 _value) public override whenNotPaused returns (bool) {
        require(!isBlackListed[_from], "user in black list");
        if (deprecated) {
            return UpgradedStandardToken(upgradedAddress).transferFromByLegacy(msg.sender, _from, _to, _value);
        } else {
            return ERC20.transferFrom(_from, _to, _value);
        }
    }

    // Forward ERC20 methods to upgraded contract if this one is deprecated
    function balanceOf(address who) public view override returns (uint256) {
        if (deprecated) {
            return UpgradedStandardToken(upgradedAddress).balanceOf(who);
        } else {
            return ERC20.balanceOf(who);
        }
    }

    // Forward ERC20 methods to upgraded contract if this one is deprecated
    function approve(address _spender, uint256 _value) public override returns (bool) {
        if (deprecated) {
            return UpgradedStandardToken(upgradedAddress).approveByLegacy(msg.sender, _spender, _value);
        } else {
            return ERC20.approve(_spender, _value);
        }
    }

    // Forward ERC20 methods to upgraded contract if this one is deprecated
    function allowance(address _owner, address _spender) public view override returns (uint256 remaining) {
        if (deprecated) {
            return UpgradedStandardToken(upgradedAddress).allowance(_owner, _spender);
        } else {
            return ERC20.allowance(_owner, _spender);
        }
    }

    // deprecate current contract if favour of a new one
    function totalSupply() public view override returns (uint256) {
        if (deprecated) {
            return UpgradedStandardToken(upgradedAddress).totalSupply();
        } else {
            return ERC20.totalSupply();
        }
    }

    // Issue a new amount of tokens
    // these tokens are deposited into the owner address
    //
    // @param _amount Number of tokens to be issued
    function mint(uint256 _amount) external onlyOwner {
        require(_amount > 0, "invalid amount");
        _mint(owner(), _amount);
        emit Issue(_amount);
    }

    // Redeem tokens.
    // These tokens are withdrawn from the owner address
    // if the balance must be enough to cover the redeem
    // or the call will fail.
    // @param _amount Number of tokens to be issued
    function redeem(uint256 _amount) external onlyOwner {
        require(totalSupply() >= _amount, "amount must be less than total supply");
        _burn(owner(), _amount);
        emit Redeem(_amount);
    }
}
