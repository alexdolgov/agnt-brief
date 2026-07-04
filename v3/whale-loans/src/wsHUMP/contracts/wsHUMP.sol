// SPDX-License-Identifier: MIT
pragma solidity >=0.7.5;

import "./libraries/SafeMath.sol";
import "./libraries/Address.sol";

import "./interfaces/IsHUMP.sol";
import "./interfaces/IwsHUMP.sol";
import "./types/ERC20.sol";

contract wsHUMP is IwsHUMP, ERC20 {
    /* ========== DEPENDENCIES ========== */

    using Address for address;
    using SafeMath for uint256;

    /* ========== STATE VARIABLES ========== */

    IsHUMP public sHUMP;

    /* ========== CONSTRUCTOR ========== */

    constructor(address _sHUMP) ERC20("Wrapped sHUMP", "wsHUMP", 18) {
        require(_sHUMP != address(0), "Zero address: sHUMP");
        sHUMP = IsHUMP(_sHUMP);
    }

    /* ========== VIEW FUNCTIONS ========== */

    /**
        @notice wrap sHUMP
        @param _amount uint
        @return uint
     */
    function wrap(uint256 _amount) override external returns (uint256) {
        sHUMP.transferFrom(msg.sender, address(this), _amount);

        uint256 value = balanceTo(_amount);
        _mint(msg.sender, value);
        return value;
    }

    /**
        @notice unwrap sHUMP
        @param _amount uint
        @return uint
     */
    function unwrap(uint256 _amount) override external returns (uint256) {
        _burn(msg.sender, _amount);

        uint256 value = balanceFrom(_amount);
        sHUMP.transfer(msg.sender, value);
        return value;
    }

    /**
     * @notice pull index from sHUMP token
     */
    function index() public view override returns (uint256) {
        return sHUMP.index();
    }

    /**
        @notice converts wsHUMP amount to HUMP
        @param _amount uint
        @return uint
     */
    function balanceFrom(uint256 _amount) public view override returns (uint256) {
        return _amount.mul(index()).div(10**decimals());
    }

    /**
        @notice converts HUMP amount to wsHUMP
        @param _amount uint
        @return uint
     */
    function balanceTo(uint256 _amount) public view override returns (uint256) {
        return _amount.mul(10**decimals()).div(index());
    }
}
