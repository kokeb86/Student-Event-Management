package com.mum.eventmanagement.event;

import com.mum.eventmanagement.model.Like;

public interface LikeService {

	Like save(int eventId, int userID);

}
