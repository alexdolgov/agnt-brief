// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;
import "@openzeppelin/contracts/access/Ownable.sol";

contract IronTreasuryProxy is Ownable {
    mapping(address => bool) public minters;

    // events
    event MinterAdded(address indexed _minter);
    event MinterRemoved(address indexed _minter);

    function hasPool(address _pool) external view returns (bool) {
        return minters[_pool];
    }

    // RESTRICTED FUNCTIONS

    function addMinter(address _minter) external onlyOwner {
        require(_minter != address(0), "invalid address");
        minters[_minter] = true;
        emit MinterAdded(_minter);
    }

    function removeMinter(address _minter) external onlyOwner {
        require(minters[_minter], "Minter not added");
        delete minters[_minter];
        emit MinterRemoved(_minter);
    }
}
