// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../../helpers/errors.sol";
import "../../ImplBase.sol";
import "../../interfaces/across.sol";

contract AcrossImplL2 is ImplBase, ReentrancyGuard {
    using SafeERC20 for IERC20;
    DepositBox public immutable depositBox;

    /**
    @notice Constructor sets the router address and registry address.
    @dev depositBox so no setter function required.
    */
    constructor(DepositBox _depositBox, address _registry) ImplBase(_registry) {
        depositBox = _depositBox;
    }

    /**
    @notice function responsible for calling l2 -> l1 transfer using across bridge.
    @dev the token to be passed on to anyswap function is supposed to be the wrapper token
    address.
    @param _amount amount to be sent.
    @param _from sender address. 
    @param _receiverAddress receivers address.
    @param _token this is the main token address on the source chain. 
    @param _extraData data contains extra data for the bridge
    */
    function outboundTransferTo(
        uint256 _amount,
        address _from,
        address _receiverAddress,
        address _token,
        uint256,
        bytes memory _extraData
    ) external payable override onlyRegistry nonReentrant {
        (
            address _l2Token,
            uint64 _slowRelayFeePct,
            uint64 _instantRelayFeePct,
            uint64 _quoteTimestamp
        ) = abi.decode(_extraData, (address, uint64, uint64, uint64));

        if (_token == NATIVE_TOKEN_ADDRESS) {
            // check if value passed is not 0
            require(msg.value != 0, MovrErrors.VALUE_SHOULD_NOT_BE_ZERO);
            depositBox.deposit{value: _amount}(
                _receiverAddress,
                _l2Token,
                _amount,
                _slowRelayFeePct,
                _instantRelayFeePct,
                _quoteTimestamp
            );
            return;
        }

        require(msg.value == 0, MovrErrors.VALUE_SHOULD_BE_ZERO);
        IERC20(_token).safeTransferFrom(_from, address(this), _amount);
        IERC20(_token).safeIncreaseAllowance(address(depositBox), _amount);
        
        depositBox.deposit(
            _receiverAddress,
            _l2Token,
            _amount,
            _slowRelayFeePct,
            _instantRelayFeePct,
            _quoteTimestamp
        );
    }
}
