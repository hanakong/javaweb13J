package reservation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReservationListCommand implements ReservationInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException {
		ReservationDAO dao = new ReservationDAO();
		
		ArrayList<ReservationInfoVO> vos = dao.getReservationList();
		
		request.setAttribute("vos", vos);
	}
}
