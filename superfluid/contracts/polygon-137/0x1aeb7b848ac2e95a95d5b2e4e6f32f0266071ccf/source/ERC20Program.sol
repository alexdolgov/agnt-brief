pragma solidity ^0.8.21;


/**
 * @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
 * instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
 * be specified by overriding the virtual {_implementation} function.
 *
 * Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
 * different contract through the {_delegate} function.
 *
 * The success and return data of the delegated call will be returned back to the caller of the proxy.
 */
abstract contract Proxy {
    /**
     * @dev Delegates the current call to `implementation`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _delegate(address implementation) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback
     * function and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }

    receive() external payable {
        revert("no receive");
    }
}

contract ERC20Stunt {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256) {}

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256) {}

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool) {}

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256) {}

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool) {}

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool) {}

    function mint(address owner, uint256 amount) external returns (bool) {}
}

/**
    * @dev Storage slot with the address of the current implementation.
    * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1.
    */
// solhint-disable-next-line private-vars-leading-underscore
bytes32 constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

contract ERC20Program is Proxy {
    event StuntCreated(address stuntAddress, address logicAddress);

    address public logic;
    ERC20Stunt public stunt;

    constructor () {
        // this is the output from non solidity compiler such as yolc.
        bytes memory bytecode = "\x33\x60\x00\x55\x61\x02\xd9\x80\x61\x00\x12\x60\x00\x39\x60\x00\xf3\xfe\x61\x00\x09\x34\x15\x61\x02\xb1\x56\x5b\x60\x00\x35\x60\xe0\x1c\x80\x63\x70\xa0\x82\x31\x14\x61\x00\xf2\x57\x80\x63\x18\x16\x0d\xdd\x14\x61\x00\xea\x57\x80\x63\xa9\x05\x9c\xbb\x14\x61\x00\xd2\x57\x80\x63\x23\xb8\x72\xdd\x14\x61\x00\xb2\x57\x80\x63\x09\x5e\xa7\xb3\x14\x61\x00\x9a\x57\x80\x63\xdd\x62\xed\x3e\x14\x61\x00\x7d\x57\x63\x40\xc1\x0f\x19\x14\x61\x00\x60\x57\x60\x00\x80\xfd\x5b\x61\x00\x78\x61\x00\x6b\x61\x02\x55\x56\x5b\x61\x00\x73\x61\x02\x1e\x56\x5b\x61\x01\x05\x56\x5b\x61\x02\x7a\x56\x5b\x61\x00\x95\x61\x00\x88\x61\x02\x3b\x56\x5b\x61\x00\x90\x61\x02\x1e\x56\x5b\x61\x02\x85\x56\x5b\x61\x02\x71\x56\x5b\x61\x00\x78\x61\x00\xa5\x61\x02\x55\x56\x5b\x61\x00\xad\x61\x02\x1e\x56\x5b\x61\x01\x5a\x56\x5b\x61\x00\x78\x61\x00\xbd\x61\x02\x63\x56\x5b\x61\x00\xc5\x61\x02\x3b\x56\x5b\x61\x00\xcd\x61\x02\x1e\x56\x5b\x61\x01\xab\x56\x5b\x61\x00\x78\x61\x00\xdd\x61\x02\x55\x56\x5b\x61\x00\xe5\x61\x02\x1e\x56\x5b\x61\x01\x4d\x56\x5b\x60\x01\x54\x61\x02\x71\x56\x5b\x61\x00\x95\x61\x00\xfd\x61\x02\x1e\x56\x5b\x61\x10\x00\x01\x54\x90\x56\x5b\x90\x60\x00\x90\x33\x82\x54\x03\x61\x01\x49\x57\x61\x01\x1d\x81\x60\x01\x54\x61\x02\xa0\x56\x5b\x60\x01\x55\x82\x61\x10\x00\x01\x61\x01\x30\x82\x82\x54\x61\x02\xa0\x56\x5b\x90\x55\x81\x52\x60\x00\x80\x51\x60\x20\x61\x02\xb9\x83\x39\x81\x51\x91\x52\x60\x20\x82\xa3\x56\x5b\x50\x80\xfd\x5b\x90\x61\x01\x58\x91\x33\x61\x01\xd8\x56\x5b\x56\x5b\x90\x81\x15\x61\x01\xa6\x57\x80\x61\x01\x79\x83\x33\x61\x10\x00\x01\x60\x00\x52\x60\x20\x52\x60\x40\x60\x00\x20\x90\x56\x5b\x55\x60\x00\x52\x33\x7f\x8c\x5b\xe1\xe5\xeb\xec\x7d\x5b\xd1\x4f\x71\x42\x7d\x1e\x84\xf3\xdd\x03\x14\xc0\xf7\xb2\x29\x1e\x5b\x20\x0a\xc8\xc7\xc3\xb9\x25\x60\x20\x60\x00\xa3\x56\x5b\x60\x00\x80\xfd\x5b\x91\x90\x61\x01\xc4\x33\x84\x61\x10\x00\x01\x60\x00\x52\x60\x20\x52\x60\x40\x60\x00\x20\x90\x56\x5b\x92\x83\x54\x93\x84\x84\x11\x61\x01\xa6\x57\x83\x61\x01\x58\x95\x03\x90\x55\x5b\x90\x91\x82\x15\x61\x01\xa6\x57\x61\x10\x00\x82\x81\x01\x90\x81\x54\x91\x82\x84\x11\x61\x01\xa6\x57\x83\x86\x93\x03\x90\x55\x01\x61\x02\x03\x82\x82\x54\x61\x02\xa0\x56\x5b\x90\x55\x60\x00\x52\x60\x00\x80\x51\x60\x20\x61\x02\xb9\x83\x39\x81\x51\x91\x52\x60\x20\x60\x00\xa3\x56\x5b\x60\x24\x36\x10\x61\x01\xa6\x57\x60\x04\x35\x90\x60\x01\x60\x01\x60\xa0\x1b\x03\x19\x82\x16\x61\x01\xa6\x57\x56\x5b\x61\x02\x43\x61\x02\x55\x56\x5b\x90\x60\x01\x60\x01\x60\xa0\x1b\x03\x19\x82\x16\x61\x01\xa6\x57\x56\x5b\x60\x44\x36\x10\x61\x01\xa6\x57\x60\x24\x35\x90\x56\x5b\x60\x64\x36\x10\x61\x01\xa6\x57\x60\x44\x35\x90\x56\x5b\x60\x00\x52\x60\x20\x60\x00\xf3\x5b\x60\x01\x60\x00\x52\x60\x20\x60\x00\xf3\x5b\x90\x61\x02\x9c\x91\x61\x10\x00\x01\x60\x00\x52\x60\x20\x52\x60\x40\x60\x00\x20\x90\x56\x5b\x54\x90\x56\x5b\x80\x82\x01\x92\x91\x83\x10\x90\x83\x10\x17\x61\x01\xa6\x57\x56\x5b\x15\x61\x01\xa6\x57\x56\xfe\xdd\xf2\x52\xad\x1b\xe2\xc8\x9b\x69\xc2\xb0\x68\xfc\x37\x8d\xaa\x95\x2b\xa7\xf1\x63\xc4\xa1\x16\x28\xf5\x5a\x4d\xf5\x23\xb3\xef";

        // create both logic and stunt
        stunt = new ERC20Stunt();
        assembly {
            sstore(IMPLEMENTATION_SLOT, sload(stunt.slot))
            sstore(logic.slot, create(0, add(bytecode, 0x20), mload(bytecode)))
        }

        emit StuntCreated(address(stunt), logic);
    }

    function _implementation() internal view override returns (address) {
        return logic;
    }
}