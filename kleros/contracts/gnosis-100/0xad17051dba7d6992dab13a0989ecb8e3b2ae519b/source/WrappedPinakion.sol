// File: openzeppelin-eth/contracts/zos-lib/Initializable.sol

pragma solidity ^0.4.24;


/**
 * @title Initializable
 *
 * @dev Helper contract to support initializer functions. To use it, replace
 * the constructor with a function that has the `initializer` modifier.
 * WARNING: Unlike constructors, initializer functions must be manually
 * invoked. This applies both to deploying an Initializable contract, as well
 * as extending an Initializable contract via inheritance.
 * WARNING: When used with inheritance, manual care must be taken to not invoke
 * a parent initializer twice, or ensure that all initializers are idempotent,
 * because this is not dealt with automatically as with constructors.
 */
contract Initializable {

  /**
   * @dev Indicates that the contract has been initialized.
   */
  bool private initialized;

  /**
   * @dev Indicates that the contract is in the process of being initialized.
   */
  bool private initializing;

  /**
   * @dev Modifier to use in the initializer function of a contract.
   */
  modifier initializer() {
    require(initializing || isConstructor() || !initialized, "Contract instance has already been initialized");

    bool wasInitializing = initializing;
    initializing = true;
    initialized = true;

    _;

    initializing = wasInitializing;
  }

  /// @dev Returns true if and only if the function is running in the constructor
  function isConstructor() private view returns (bool) {
    // extcodesize checks the size of the code stored in an address, and
    // address returns the current address. Since the code is still not
    // deployed when running a constructor, any checks on its code size will
    // yield zero, making it an effective way to detect if a contract is
    // under construction or not.
    uint256 cs;
    assembly { cs := extcodesize(address) }
    return cs == 0;
  }

  // Reserved storage space to allow for layout changes in the future.
  uint256[50] private ______gap;
}

// File: openzeppelin-eth/contracts/math/SafeMath.sol

pragma solidity ^0.4.24;


/**
 * @title SafeMath
 * @dev Math operations with safety checks that revert on error
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, reverts on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
    // benefit is lost if 'b' is also tested.
    // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
    if (a == 0) {
      return 0;
    }

    uint256 c = a * b;
    require(c / a == b);

    return c;
  }

  /**
  * @dev Integer division of two numbers truncating the quotient, reverts on division by zero.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b > 0); // Solidity only automatically asserts when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold

    return c;
  }

  /**
  * @dev Subtracts two numbers, reverts on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    uint256 c = a - b;

    return c;
  }

  /**
  * @dev Adds two numbers, reverts on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a);

    return c;
  }

  /**
  * @dev Divides two numbers and returns the remainder (unsigned integer modulo),
  * reverts when dividing by zero.
  */
  function mod(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b != 0);
    return a % b;
  }
}

// File: minimetoken/contracts/TokenController.sol

pragma solidity ^0.4.18;

/// @dev The token controller contract must implement these functions
contract TokenController {
    /// @notice Called when `_owner` sends ether to the MiniMe Token contract
    /// @param _owner The address that sent the ether to create tokens
    /// @return True if the ether is accepted, false if it throws
    function proxyPayment(address _owner) public payable returns(bool);

    /// @notice Notifies the controller about a token transfer allowing the
    ///  controller to react if desired
    /// @param _from The origin of the transfer
    /// @param _to The destination of the transfer
    /// @param _amount The amount of the transfer
    /// @return False if the controller does not authorize the transfer
    function onTransfer(address _from, address _to, uint _amount) public returns(bool);

    /// @notice Notifies the controller about an approval allowing the
    ///  controller to react if desired
    /// @param _owner The address that calls `approve()`
    /// @param _spender The spender in the `approve()` call
    /// @param _amount The amount in the `approve()` call
    /// @return False if the controller does not authorize the approval
    function onApprove(address _owner, address _spender, uint _amount) public
        returns(bool);
}

// File: contracts/interfaces/IERC677.sol

pragma solidity ^0.4.24;

interface IERC677 {
    function transfer(address _to, uint256 _value) external returns (bool);

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) external returns (bool);

    function approve(address _spender, uint256 _value) external returns (bool);
}

// File: contracts/interfaces/ITokenBridge.sol

pragma solidity ^0.4.24;


interface ITokenBridge {
    function relayTokens(
        IERC677 token,
        address _receiver,
        uint256 _value
    ) external;
}

// File: contracts/tokens/WrappedPinakion.sol

/**
 *  https://contributing.kleros.io/smart-contract-workflow
 *  @authors: [@fnanni-0]
 *  @reviewers: [@unknownunknown1, @MerlinEgalite, @hbarcelos, @shalzz]
 *  @auditors: []
 *  @bounties: []
 *  @deployments: []
 */
pragma solidity ^0.4.24;






contract WrappedPinakion is Initializable {
    using SafeMath for uint256;

    /* Events */

    /**
     * @notice Emitted when `value` tokens are moved from one account (`from`) to another (`to`).
     * @dev Notice that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @notice Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /* Storage */

    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) public allowance;

    /// @notice Total supply of the token. Equals the total xPinakion deposit into the contract.
    uint256 public totalSupply;

    /// @notice Name of the token.
    string public name;

    /// @notice Symbol of the token.
    string public symbol;

    /// @notice Number of decimals of the token.
    uint8 public decimals;

    /// @notice The token's controller.
    address public controller;

    /// @notice Bridged PNK on xDai to be wrapped. This token is upgradeable.
    IERC677 public xPinakion;

    /// @notice xDai Token Bridge. The Token Bridge is upgradeable.
    ITokenBridge public tokenBridge;

    /* Modifiers */

    /// @dev Verifies that the sender has ability to modify controlled parameters.
    modifier onlyController() {
        require(controller == msg.sender, "The caller is not the controller.");
        _;
    }

    /* Initializer */

    /**
     * @dev Constructor.
     * @param _name for the wrapped PNK on the home chain.
     * @param _symbol for wrapped PNK ticker on the home chain.
     * @param _xPinakion the home PNK contract which is already bridged to the foreign PNK contract.
     * @param _tokenBridge the TokenBridge contract.
     */
    function initialize(
        string memory _name,
        string memory _symbol,
        IERC677 _xPinakion,
        ITokenBridge _tokenBridge
    ) public initializer {
        name = _name;
        symbol = _symbol;
        decimals = 18;
        xPinakion = _xPinakion;
        tokenBridge = _tokenBridge;

        controller = msg.sender;
    }

    /* External */

    /**
     * @notice Changes `controller` to `_controller`.
     * @param _controller The new controller of the contract
     */
    function changeController(address _controller) external onlyController {
        controller = _controller;
    }

    /**
     * @notice Converts bridged PNK (xPinakion) into wrapped PNK which can be staked in KlerosLiquid.
     * @param _amount The amount of wrapped pinakions to mint.
     */
    function deposit(uint256 _amount) external {
        _mint(msg.sender, _amount);
        require(
            xPinakion.transferFrom(msg.sender, address(this), _amount),
            "Sender does not have enough approved funds."
        );
    }

    /**
     * @notice IERC20 Receiver functionality.
     * @dev Converts bridged PNK (xPinakion) into wrapped PNK which can be staked in KlerosLiquid.
     * If the tokenBridge is calling this function, then this contract has already received
     * the xPinakion tokens. Notice that the Home bridge calls onTokenBridge as a result of
     * someone invoking `relayTokensAndCall()` on the Foreign bridge contract.
     * @param _token The token address the _amount belongs to.
     * @param _amount The amount of wrapped PNK to mint.
     * @param _data Calldata containing the address of the recipient.
     * Notice that the address has to be padded to the right 32 bytes.
     */
    function onTokenBridged(
        address _token,
        uint256 _amount,
        bytes _data
    ) external {
        require(msg.sender == address(tokenBridge), "Sender not authorized.");
        require(_token == address(xPinakion), "Token bridged is not xPinakion.");

        address recipient;
        assembly {
            recipient := calldataload(0x84)
        }
        _mint(recipient, _amount);
    }

    /**
     * @notice Converts wrapped PNK back into bridged PNK (xPinakion).
     * @param _amount The amount of bridged PNK to withdraw.
     */
    function withdraw(uint256 _amount) external {
        _burn(_amount);
        require(xPinakion.transfer(msg.sender, _amount), "The `transfer` function must not fail.");
    }

    /**
     * @notice Converts wrapped PNK back into PNK using the Token Bridge.
     * @dev This function is not strictly needed, but it provides a good UX to users who want to get their Mainnet's PNK back.
     * What normally takes 3 transactions, here is done in one go.
     * Notice that the PNK have to be claimed on Mainnet's TokenBridge by the receiver.
     * @param _amount The amount of PNK to withdraw.
     * @param _receiver The address which will receive the PNK back in the foreign chain.
     */
    function withdrawAndConvertToPNK(uint256 _amount, address _receiver) external {
        _burn(_amount);
        // Using approve is safe here, because this contract approves the bridge to spend the tokens and triggers the relay immediately.
        xPinakion.approve(address(tokenBridge), _amount);
        tokenBridge.relayTokens(xPinakion, _receiver, _amount);
    }

    /**
     * @notice Moves `_amount` tokens from the caller's account to `_recipient`.
     * @param _recipient The entity receiving the funds.
     * @param _amount The amount to tranfer in base units.
     * @return True on success.
     */
    function transfer(address _recipient, uint256 _amount) public returns (bool) {
        if (isContract(controller)) {
            require(
                TokenController(controller).onTransfer(msg.sender, _recipient, _amount),
                "Token controller rejects transfer."
            );
        }
        balances[msg.sender] = balances[msg.sender].sub(_amount); // ERC20: transfer amount exceeds balance
        balances[_recipient] = balances[_recipient].add(_amount);
        emit Transfer(msg.sender, _recipient, _amount);
        return true;
    }

    /**
     * @notice Moves `_amount` tokens from `_sender` to `_recipient` using the
     * allowance mechanism. `_amount` is then deducted from the caller's allowance.
     * @param _sender The entity to take the funds from.
     * @param _recipient The entity receiving the funds.
     * @param _amount The amount to tranfer in base units.
     * @return True on success.
     */
    function transferFrom(
        address _sender,
        address _recipient,
        uint256 _amount
    ) public returns (bool) {
        if (isContract(controller)) {
            require(
                TokenController(controller).onTransfer(_sender, _recipient, _amount),
                "Token controller rejects transfer."
            );
        }

        /** The controller of this contract can move tokens around at will,
         *  this is important to recognize! Confirm that you trust the
         *  controller of this contract, which in most situations should be
         *  another open source smart contract or 0x0.
         */
        if (msg.sender != controller) {
            allowance[_sender][msg.sender] = allowance[_sender][msg.sender].sub(_amount); // ERC20: transfer amount exceeds allowance.
        }

        balances[_sender] = balances[_sender].sub(_amount); // ERC20: transfer amount exceeds balance
        balances[_recipient] = balances[_recipient].add(_amount);
        emit Transfer(_sender, _recipient, _amount);
        return true;
    }

    /**
     * @notice Approves `_spender` to spend `_amount`.
     * @param _spender The entity allowed to spend funds.
     * @param _amount The amount of base units the entity will be allowed to spend.
     * @return True on success.
     */
    function approve(address _spender, uint256 _amount) public returns (bool) {
        // Alerts the token controller of the approve function call
        if (isContract(controller)) {
            require(
                TokenController(controller).onApprove(msg.sender, _spender, _amount),
                "Token controller does not approve."
            );
        }

        allowance[msg.sender][_spender] = _amount;
        emit Approval(msg.sender, _spender, _amount);
        return true;
    }

    /**
     * @notice Increases the `_spender` allowance by `_addedValue`.
     * @param _spender The entity allowed to spend funds.
     * @param _addedValue The amount of extra base units the entity will be allowed to spend.
     * @return True on success.
     */
    function increaseAllowance(address _spender, uint256 _addedValue) public returns (bool) {
        uint256 newAllowance = allowance[msg.sender][_spender].add(_addedValue);
        // Alerts the token controller of the approve function call
        if (isContract(controller)) {
            require(
                TokenController(controller).onApprove(msg.sender, _spender, newAllowance),
                "Token controller does not approve."
            );
        }

        allowance[msg.sender][_spender] = newAllowance;
        emit Approval(msg.sender, _spender, newAllowance);
        return true;
    }

    /**
     * @notice Decreases the `_spender` allowance by `_subtractedValue`.
     * @param _spender The entity whose spending allocation will be reduced.
     * @param _subtractedValue The reduction of spending allocation in base units.
     * @return True on success.
     */
    function decreaseAllowance(address _spender, uint256 _subtractedValue) public returns (bool) {
        uint256 newAllowance = allowance[msg.sender][_spender].sub(_subtractedValue); // ERC20: decreased allowance below zero
        // Alerts the token controller of the approve function call
        if (isContract(controller)) {
            require(
                TokenController(controller).onApprove(msg.sender, _spender, newAllowance),
                "Token controller does not approve."
            );
        }

        allowance[msg.sender][_spender] = newAllowance;
        emit Approval(msg.sender, _spender, newAllowance);
        return true;
    }

    /* Internal */

    /**
     * @dev Internal function that mints an amount of the token and assigns it to
     * an account. This encapsulates the modification of balances such that the
     * proper events are emitted.
     * @param _recipient The address which will receive the minted tokens.
     * @param _amount The amount that will be created.
     */
    function _mint(address _recipient, uint256 _amount) internal {
        totalSupply = totalSupply.add(_amount);
        balances[_recipient] = balances[_recipient].add(_amount);
        emit Transfer(address(0x0), _recipient, _amount);
    }

    /**
     * @dev Destroys `_amount` tokens from the caller. Cannot burn locked tokens.
     * @param _amount The quantity of tokens to burn in base units.
     */
    function _burn(uint256 _amount) internal {
        if (isContract(controller)) {
            require(
                TokenController(controller).onTransfer(msg.sender, address(0x0), _amount),
                "Token controller rejects transfer."
            );
        }
        balances[msg.sender] = balances[msg.sender].sub(_amount); // ERC20: burn amount exceeds balance
        totalSupply = totalSupply.sub(_amount);
        emit Transfer(msg.sender, address(0x0), _amount);
    }

    /**
     * @dev Internal function to determine if an address is a contract.
     * @param _addr The address being queried.
     * @return True if `_addr` is a contract.
     */
    function isContract(address _addr) internal view returns (bool) {
        uint256 size;
        if (_addr == 0) return false;
        assembly {
            size := extcodesize(_addr)
        }
        return size > 0;
    }

    /* Getters */

    /**
     * @dev Gets the balance of the specified address.
     * @param _owner The address to query the balance of.
     * @return uint256 value representing the amount owned by the passed address.
     */
    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
}
