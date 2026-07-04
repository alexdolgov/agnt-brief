// SPDX-License-Identifier: MIT

// P1 - P3: OK
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
contract PulsarFeeShare is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public feeCollector;

    address public treasury;
    address public buyback;
    address public partner;

    uint256 public treasuryFees;
    uint256 public buybackFees;
    uint256 public partnerFees;


    uint256 feeDenominator = 100000;

    constructor(
        address _feeCollector,
        address _treasury,
        uint256 _treasuryFees,
        address _buyback,
        uint256 _buybackFees,
        address _partner,
        uint256 _partnerFees
    ) public {
        feeCollector = _feeCollector;

        treasury = _treasury;
        buyback = _buyback;
        partner = _partner;

        treasuryFees = _treasuryFees;
        buybackFees = _buybackFees;
        partnerFees = _partnerFees;
    }

    function distribute(address[] calldata tokens) payable external {
        uint256 len = tokens.length;
        for (uint256 i = 0; i < len; i++) {
            uint256 balanceToken = IERC20(tokens[i]).balanceOf(feeCollector);

            uint256 treasuryValue = (balanceToken * treasuryFees) / feeDenominator;
            uint256 buybackValue = (balanceToken * buybackFees) / feeDenominator;
            uint256 partnerValue = (balanceToken * partnerFees) / feeDenominator;

            safeTransferFrom(tokens[i], feeCollector, treasury, treasuryValue);
            safeTransferFrom(tokens[i], feeCollector, buyback, buybackValue);
            safeTransferFrom(tokens[i], feeCollector, partner, partnerValue);
            
            
        }
        uint256 balanceEth = msg.value;
        safeTransferETH(treasury, (balanceEth * treasuryFees) / feeDenominator);
        safeTransferETH(buyback, (balanceEth * buybackFees) / feeDenominator);
        safeTransferETH(partner, (balanceEth * partnerFees) / feeDenominator);
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: ETH_TRANSFER_FAILED');
    }

    
}