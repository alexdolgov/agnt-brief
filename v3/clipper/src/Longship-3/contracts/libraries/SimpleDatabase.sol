// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;


/*
	Simple token database for storing mints, burns, and a total balance.

	"ERC20 without transfer" derived from OpenZeppelin ERC20 library
*/
contract SimpleDatabase {
	mapping(address => uint256) private _balances;
    	mapping(address => uint64) internal _lastDeposits;

	uint256 private _totalSupply;
	uint64 private MINIMUM_LOCKUP_PERIOD = 1 days;

	function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "Mint to the zero address");

        _totalSupply += amount;
        _balances[account] += amount;
        _lastDeposits[account] = uint64(block.timestamp);
    }

    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "Burn from the zero address");
        require(_lastDeposits[account] <= (block.timestamp - MINIMUM_LOCKUP_PERIOD), "Lock up period still in effect");

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "Burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;
    }

    function getLastDeposit(address account) public view returns (uint64) {
        return _lastDeposits[account];
    }

    //TODO: REMOVE BEFORE PROD DEPLOYMENT
    function setLPLockup(uint64 newLockup) public {
        MINIMUM_LOCKUP_PERIOD = newLockup;
    }

}
