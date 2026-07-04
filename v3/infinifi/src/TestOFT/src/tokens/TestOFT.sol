// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {OFTCore} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTCore.sol";
import {Ownable} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OAppCore.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {ERC20Votes} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract TestOFT is ERC20Burnable, ERC20Votes, OFTCore {
    /// @dev Escrow of tokens that have been bridged to other chains through OFT logic.
    address public immutable escrow = address(uint160(uint256(keccak256("TestOFT"))));

    constructor()
        ERC20("TestOFT", "TOFT")
        EIP712("TestOFT", "1")
        OFTCore(decimals(), 0x1a44076050125825900e736c501f859c50fE728c, msg.sender)
        Ownable(msg.sender)
    {}

    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    function burn(uint256 _value) public override onlyOwner {
        _burn(_msgSender(), _value);
    }

    function burnFrom(address _account, uint256 _value) public override onlyOwner {
        _spendAllowance(_account, _msgSender(), _value);
        _burn(_account, _value);
    }

    function _update(address _from, address _to, uint256 _value) internal override(ERC20, ERC20Votes) {
        return ERC20Votes._update(_from, _to, _value);
    }

    // ERC-6372 time-based checkpoints.
    function clock() public view override returns (uint48) {
        return uint48(block.timestamp);
    }

    // ERC-6372 time-based checkpoints.
    function CLOCK_MODE() public pure override returns (string memory) {
        return "mode=timestamp";
    }

    // OFT function
    function token() public view returns (address) {
        return address(this);
    }

    // OFT function
    function approvalRequired() external pure virtual returns (bool) {
        return false;
    }

    // OFT function: bridge out
    function _debit(address _from, uint256 _amountLD, uint256 _minAmountLD, uint32 _dstEid)
        internal
        virtual
        override
        returns (uint256 amountSentLD, uint256 amountReceivedLD)
    {
        (amountSentLD, amountReceivedLD) = _debitView(_amountLD, _minAmountLD, _dstEid);
        _update(_from, escrow, amountSentLD);
    }

    // OFT function: bridge in
    function _credit(
        address _to,
        uint256 _amount,
        uint32 /*_srcEid*/
    )
        internal
        virtual
        override
        returns (uint256)
    {
        // can't mint to address(0)
        if (_to == address(0x0)) _to = address(this);

        _update(escrow, _to, _amount);
        return _amount;
    }
}
