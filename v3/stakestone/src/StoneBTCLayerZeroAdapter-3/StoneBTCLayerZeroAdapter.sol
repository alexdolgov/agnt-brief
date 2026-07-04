// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {OFTAdapter} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IStoneBTC} from "../Interfaces/IStoneBTC.sol";
import "../Errors/Errors.sol";

contract StoneBTCLayerZeroAdapter is OFTAdapter, AccessControl {
    bytes32 public constant CAP_SETTER_ROLE = keccak256("CAP_SETTER_ROLE");
    uint256 public cap;
    mapping(uint256 => uint256) public quota;

    event capSet(uint256 beforeCap, uint256 afterCap);

    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate,
        uint256 _cap
    ) OFTAdapter(_token, _lzEndpoint, _delegate) Ownable(_delegate) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        cap = _cap;
        emit capSet(0, _cap);
    }

    function setCap(uint256 _cap) external onlyRole(CAP_SETTER_ROLE) {
        emit capSet(cap, _cap);
        cap = _cap;
    }

    function getQuota() external view returns (uint256) {
        uint256 amount = quota[block.timestamp / 1 days];
        if (cap > amount) {
            return cap - amount;
        } else {
            return 0;
        }
    }

    function approvalRequired() external pure virtual override returns (bool) {
        return false;
    }

    function _debit(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    )
        internal
        virtual
        override
        returns (uint256 amountSentLD, uint256 amountReceivedLD)
    {
        (amountSentLD, amountReceivedLD) = _debitView(
            _amountLD,
            _minAmountLD,
            _dstEid
        );

        uint256 day = block.timestamp / 1 days;
        quota[day] = quota[day] + amountSentLD;
        if (quota[day] > cap) revert ExceedCap();

        IStoneBTC(address(innerToken)).burn(msg.sender, amountSentLD);
    }

    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 /*_srcEid*/
    ) internal virtual override returns (uint256 amountReceivedLD) {
        IStoneBTC(address(innerToken)).mint(_to, _amountLD);
        return _amountLD;
    }
}
