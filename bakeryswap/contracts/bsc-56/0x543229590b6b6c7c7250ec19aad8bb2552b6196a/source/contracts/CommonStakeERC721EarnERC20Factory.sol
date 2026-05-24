// SPDX-License-Identifier: MIT

pragma solidity =0.6.6;

import '@openzeppelin/contracts/access/Ownable.sol';
import './CommonStakeERC721EarnERC20.sol';

contract CommonStakeERC721EarnERC20Factory is Ownable {
    event CommonStakeERC721EarnERC20Created(address indexed commonMaster);

    constructor() public {}

    function createCommonStakeERC721EarnERC20(
        address _token,
        uint256 _startBlock,
        uint256 _tokenPerBlock
    ) external onlyOwner returns (address) {
        CommonStakeERC721EarnERC20 commonMaster = new CommonStakeERC721EarnERC20(_token, _startBlock, _tokenPerBlock);
        Ownable(address(commonMaster)).transferOwnership(_msgSender());
        emit CommonStakeERC721EarnERC20Created(address(commonMaster));
        return address(commonMaster);
    }
}
